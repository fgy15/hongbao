<?php
require_once "load.php";

$postdata = file_get_contents("php://input");
if ($postdata == "") {
    echo "post body required！";
    die();
}
$obj = json_decode($postdata, true);
$res = new Response;
if (json_last_error() == JSON_ERROR_NONE && array_key_exists('name', $obj) && array_key_exists('pwd', $obj)) {
    $link = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_NAME);
    if ($link) {
        mysqli_autocommit($link, false);
        $sql1 = "INSERT INTO `user` (`uid`, `name`, `pwd`) VALUES ('" . $obj['name'] . "', '" . $obj['name'] . "','" . md5($obj['pwd']) . "');";
        $sql2 = "INSERT INTO `account` (`uid`) VALUES ('" . $obj['name'] . "')";
        $ret1 = mysqli_query($link, $sql1);
        $err1 = mysqli_error($link);
        $ret2 = mysqli_query($link, $sql2);
        $err2 = mysqli_error($link);
        if ($ret1 && $ret2) {
            mysqli_commit($link);
            die();
        } else {
            mysqli_rollback($link);
            $res->error_id = DB_ERROR;
            $err           = $err1 . " " . $err2;
            if (strpos($err, 'Duplicate') !== false) {
                $res->error_msg = "name 重复";
            } else {
                $res->error_msg = $err;
            }
        }
    } else {
        $res->error_id  = DB_ERROR;
        $res->error_msg = "数据库连接失败：" . mysqli_error($link);
    }
} else {
    $res->error_id  = JSON_SYNTAX_ERROR;
    $res->error_msg = json_last_error_msg();
}
echo json_encode($res, JSON_UNESCAPED_UNICODE);
