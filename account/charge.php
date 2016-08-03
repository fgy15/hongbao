<?php
require_once '../Conf/resource.php';

function __autoload($class_name)
{
    if (file_exists($class_name . '.php')) {
        require_once $class_name . '.php';
    } elseif (file_exists('../Entity/' . $class_name . '.php')) {
        require_once '../Entity/' . $class_name . '.php';
    }
}

$postdata = file_get_contents("php://input");
$obj      = json_decode($postdata, true);
$uid;
$response = new Response;

if (isset($_COOKIE['id']) && isset($_COOKIE['token'])) {
    if (Auth::authcookie($_COOKIE['id'], $_COOKIE['token'])->flag) {
        $uid = $_COOKIE['id'];
        task($obj, $response, $uid);
    }
} else {
    $response->st       = 0;
    $response->error_id = COOKIE_ERROR;
}
echo json_encode($response, JSON_UNESCAPED_UNICODE);

function task($obj, &$response, $uid)
{
    if (json_last_error() == JSON_ERROR_NONE && array_key_exists('cardid', $obj) && array_key_exists('pwd', $obj) && array_key_exists('val', $obj)) {
        $cardid = $obj['cardid'];
        $pwd    = $obj['pwd'];
        $pay    = $obj['val'];
        $link   = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_NAME);
        if ($link) {
            $val = Account::getcardval1($link, $cardid, $pwd);
            if ($val > $pay) {
                $account     = Account::getaccountid($link, $uid);
                $account_val = Account::getaccountval($link, $account);

                mysqli_autocommit($link, false);
                $sql1 = "UPDATE card SET val=" . ($val - $pay) . " WHERE (cardid='" . $cardid . "')";
                $sql2 = "UPDATE account SET val=" . ($account_val + $pay) . " WHERE (`uid`='" . $uid . "')";
                $sql3 = "INSERT INTO `transaction_record` (`account`, `val`, `type`, `ttime`, `cardid`) VALUES ('" . $account . "','" . $pay . "','+',NOW(),'" . $cardid . "')";
                $ret1 = mysqli_query($link, $sql1);
                $err1 = mysqli_error($link);
                $ret2 = mysqli_query($link, $sql2);
                $err2 = mysqli_error($link);
                $ret3 = mysqli_query($link, $sql3);
                $err3 = mysqli_error($link);
                if ($ret1 && $ret2 && $ret3) {
                    mysqli_commit($link);
                    $response->st = 1;
                } else {
                    mysqli_rollback($link);
                    $response->st        = 0;
                    $response->error_id  = DB_ERROR;
                    $response->error_msg = $err1 . ";" . $err2 . ';' . $ret3;
                }
            } else {
                $response->st        = 0;
                $response->error_id  = CARID_ERROR;
                $response->error_msg = "余额不足";
            }
        } else {
            $response->st        = 0;
            $response->error_id  = DB_ERROR;
            $response->error_msg = "数据库连接失败：" . mysqli_error($link);
        }
    } else {
        $response->st        = 0;
        $response->error_id  = JSON_SYNTAX_ERROR;
        $response->error_msg = json_last_error_msg();
    }
}
