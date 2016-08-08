<?php
require_once "load.php";

$postdata = file_get_contents("php://input");
$obj      = json_decode($postdata, true);
$uid;
$response = new Response;

if (isset($_COOKIE['id']) && isset($_COOKIE['token'])) {
    if (Auth::authcookie($_COOKIE['id'], $_COOKIE['token'])->flag) {
        $uid = $_COOKIE['id'];
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            fahongbao($obj, $response, $uid);
        } elseif ($_SERVER['REQUEST_METHOD'] == 'GET') {
            $bid = $_GET['id'];
            qianghongbao($response, $uid, $bid);
        }
    }
} else {
    $response->st       = 0;
    $response->error_id = COOKIE_ERROR;
}
echo json_encode($response, JSON_UNESCAPED_UNICODE);

function fahongbao($obj, &$response, $uid)
{
    if (json_last_error() == JSON_ERROR_NONE && array_key_exists('val', $obj) && array_key_exists('num', $obj) && array_key_exists('type', $obj)) {
        $val  = $obj['val'];
        $num  = $obj['num'];
        $type = $obj['type'];
        if (array_key_exists('msg', $obj)) {
            $msg = $obj['msg'];
        } else {
            $msg = "恭喜发财";
        }

        //检测
        if (($val / $num) < 0.01) {
            $response->st        = 0;
            $response->error_id  = INPUT_ERROR;
            $response->error_msg = "单个红包最少0.01元";
            return $response;
        }

        $link = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_NAME);
        if ($link) {
            $account     = Account::getaccountid($link, $uid);
            $account_val = Account::getaccountval($link, $account);

            if ($val <= $account_val) {
                mysqli_autocommit($link, false);
                $bribery = new bribery($val, $uid, $msg, $num, $type);
                //var_dump($bribery);
                //个人账户扣款
                $i       = 0;
                $sql[$i] = "UPDATE account SET val=" . ($account_val - $val) . " WHERE (`account`='" . $account . "')";
                $ret[$i] = mysqli_query($link, $sql[$i]);
                $err[$i] = mysqli_error($link);

                $sysaccount_val = Account::getaccountval($link, SYS_ACCOUNT);
                //系统帐户加钱
                $i++;
                $sql[$i] = "UPDATE account SET val=" . ($sysaccount_val + $val) . " WHERE (`account`='" . SYS_ACCOUNT . "')";
                $ret[$i] = mysqli_query($link, $sql[$i]);
                $err[$i] = mysqli_error($link);
                //转账记录
                $i++;
                $sql[$i] = "INSERT INTO `transfer_record` (`out_account`, `in_account`, `time`, `val`) VALUES ('" . $account . "', '" . SYS_ACCOUNT . "', NOW(), '" . $val . "')";
                $ret[$i] = mysqli_query($link, $sql[$i]);
                $err[$i] = mysqli_error($link);
                //创建红包
                $i++;
                $sql[$i] = "INSERT INTO `bribery` (`bid`, `val`, `uid`, `msg`, `num`, `type`, `ptime`, `otime`) VALUES ('" . $bribery->bid . "', '" . $bribery->val . "', '" . $bribery->uid . "', '" . $bribery->msg . "', '" . $bribery->num . "', '" . $bribery->type . "', '" . $bribery->ptime . "', '" . $bribery->otime . "')";
                $ret[$i] = mysqli_query($link, $sql[$i]);
                $err[$i] = mysqli_error($link);
                //创建小红包
                foreach ($bribery->mbriberys as $mbribery) {
                    $i++;
                    $sql[$i] = "INSERT INTO `mbribery` (`mid`, `bid`, `val`, `st`) VALUES ('" . $mbribery->mid . "', '" . $mbribery->bid . "', '" . $mbribery->val . "', '" . $mbribery->st . "')";
                    $ret[$i] = mysqli_query($link, $sql[$i]);
                    $err[$i] = mysqli_error($link);
                }
                $m_ret = true;
                $m_err = "";
                for ($j = 0; $j <= $i; $j++) {
                    $m_ret *= $ret[$j];
                    $m_err .= $err[$j];
                }
                if ($m_ret) {
                    mysqli_commit($link);
                    $response->st   = 1;
                    $response->data = $bribery->bid;
                } else {
                    mysqli_rollback($link);
                    $response->st        = 0;
                    $response->error_id  = DB_ERROR;
                    $response->error_msg = $m_err;
                }
            } else {
                $response->st        = 0;
                $response->error_id  = ACCOUNT_ERROR;
                $response->error_msg = "账户余额不足";
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

function qianghongbao(&$response, $uid, $bid)
{
    if ($bid == "") {
        $response->st        = 0;
        $response->error_id  = URL_ERROR;
        $response->error_msg = "请添加红包id";
        return;
    }
    $MAX_COUNT = 20;
    $link      = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_NAME);
    if ($link) {

        $st = new bribery_status($bid, $response);
        if (isset($st->status[$uid])) {
            $response->st        = 0;
            $response->error_id  = BONUS_ERROR;
            $response->error_msg = "您已领取过红包";
            $my_bribery          = new my_bribery_status($st->status[$uid]->val, $st);
            $response->data      = $my_bribery;
            return;
        } elseif ($response->st == 0) {
            return;
        }
        mysqli_autocommit($link, false);
        while ($MAX_COUNT > 0) {
            $MAX_COUNT--;
            $mid;
            $val;
            $i      = 0;
            $sql[0] = "SELECT mid,val from mbribery where bid='" . $bid . "' AND st=0 LIMIT 1;";
            $ret[0] = mysqli_query($link, $sql[$i]);
            $err[0] = mysqli_error($link);
            if ($ret[0]) {
                $row = $ret[0]->fetch_row();
                $mid = $row[0];
                $val = $row[1];
                if ($mid == "") {
                    $response->st = 0;
                    if ($response->error_id != BONUS_OVERTIME) {
                        $response->error_id  = BONUS_ERROR;
                        $response->error_msg = "红包已领完";
                        break;
                    }
                    return;
                }
            } else {
                $response->st        = 0;
                $response->error_id  = DB_ERROR;
                $response->error_msg = mysqli_error($link);
                return;
            }

            $i++;
            $sql[$i] = "UPDATE mbribery SET st=1 WHERE mid = '" . $mid . "' AND st='0';";
            $ret[$i] = mysqli_query($link, $sql[$i]);
            $err[$i] = mysqli_error($link);

            $account     = Account::getaccountid($link, $uid);
            $account_val = Account::getaccountval($link, $account);

            //个人账户加钱
            $i++;
            $sql[$i] = "UPDATE account SET val=" . ($account_val + $val) . " WHERE (`account`='" . $account . "')";
            $ret[$i] = mysqli_query($link, $sql[$i]);
            $err[$i] = mysqli_error($link);

            $sysaccount_val = Account::getaccountval($link, SYS_ACCOUNT);
            //系统帐户扣钱
            $i++;
            $sql[$i] = "UPDATE account SET val=" . ($sysaccount_val - $val) . " WHERE (`account`='" . SYS_ACCOUNT . "')";
            $ret[$i] = mysqli_query($link, $sql[$i]);
            $err[$i] = mysqli_error($link);
            //转账记录
            $i++;
            $sql[$i] = "INSERT INTO `transfer_record` (`out_account`, `in_account`, `time`, `val`) VALUES ('" . SYS_ACCOUNT . "', '" . $account . "', NOW(), '" . $val . "');";
            $ret[$i] = mysqli_query($link, $sql[$i]);
            $err[$i] = mysqli_error($link);
            //红包领取记录
            $i++;
            $sql[$i] = "INSERT INTO `bribery_record` (`mid`, `receiveid`, `receivetime`) VALUES ('" . $mid . "', '" . $uid . "', NOW());";
            $ret[$i] = mysqli_query($link, $sql[$i]);
            $err[$i] = mysqli_error($link);

            $m_ret = true;
            $m_err = "";
            for ($j = 1; $j <= $i; $j++) {
                $m_ret *= $ret[$j];
                $m_err .= $err[$j];
            }
            if ($m_ret) {
                mysqli_commit($link);
                $st             = new bribery_status($bid, $response);
                $my_bribery     = new my_bribery_status($st->status[$uid]->val, $st);
                $response->data = $my_bribery;
                break;
            } else {
                mysqli_rollback($link);
                $response->st        = 0;
                $response->error_id  = DB_ERROR;
                $response->error_msg = $m_err;
            }
        }

    } else {
        $response->st        = 0;
        $response->error_id  = DB_ERROR;
        $response->error_msg = "数据库连接失败：" . mysqli_error($link);
    }
}
