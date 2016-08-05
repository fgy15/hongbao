<?php
require_once "load.php";

$link = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_NAME);
if ($link) {
    $tsql = "SELECT m.mid, m.val, b.uid FROM bribery AS b INNER JOIN mbribery AS m ON m.bid = b.bid WHERE b.otime < now() AND m.st = '0';";
    $tret = mysqli_query($link, $tsql);
    if ($tret && $tret->num_rows > 0) {
        $i              = 0;
        $otime_mids     = array();
        $otime_uids     = array();
        $overtime_money = 0;
        while ($row = $tret->fetch_row()) {
            $mid            = $row[0];
            $val            = $row[1];
            $uid            = $row[2];
            $otime_mids[$i] = $mid;
            if (array_key_exists($uid, $otime_uids)) {
                $otime_uids[$uid] += $val;
            } else {
                $otime_uids[$uid] = $val;
            }
            $overtime_money += $val;
            $i++;
        }
        mysqli_autocommit($link, false);
        $i = 0;
        //更新小红包状态
        foreach ($otime_mids as $mid) {
            $i++;
            $sql[$i] = "UPDATE `mbribery` SET `st`='2' WHERE (`mid`='" . $mid . "')";
            $ret[$i] = mysqli_query($link, $sql[$i]);
            $err[$i] = mysqli_error($link);
        }
        foreach ($otime_uids as $uid => $val) {
            $account = Account::getaccountid($link, $uid);

            //个人账户退款
            $i++;
            $sql[$i] = "UPDATE account SET val=val+" . $val . " WHERE (`account`='" . $account . "')";
            $ret[$i] = mysqli_query($link, $sql[$i]);
            $err[$i] = mysqli_error($link);
            //转账记录
            $i++;
            $sql[$i] = "INSERT INTO `transfer_record` (`out_account`, `in_account`, `time`, `val`) VALUES ('" . SYS_ACCOUNT . "', '" . $account . "', NOW(), '" . $val . "')";
            $ret[$i] = mysqli_query($link, $sql[$i]);
            $err[$i] = mysqli_error($link);
        }

        //系统帐户加钱
        $i++;
        $sql[$i] = "UPDATE account SET val=val-" . $overtime_money . " WHERE (`account`='" . SYS_ACCOUNT . "')";
        $ret[$i] = mysqli_query($link, $sql[$i]);
        $err[$i] = mysqli_error($link);
        $m_ret   = true;
        $m_err   = "";
        for ($j = 1; $j <= $i; $j++) {
            $m_ret *= $ret[$j];
            if (!$ret[$j]) {
                $m_err .= $sql[$j] . "\n";
                $m_err .= $err[$j] . "\n";
                bresk;
            }
        }
        if ($m_ret) {
            mysqli_commit($link);
            mlog("INFO:" . "refund ￥" . $overtime_money . " to users");
        } else {
            mysqli_rollback($link);
            mlog("DB_ERROR" . $m_err);
        }
    } elseif ($tret->num_rows == 0) {
        //mlog("INFO:NOTHING OVERTIME");
    } else {
        mlog("DB_ERROR:" . mysqli_error($link));
    }
} else {
    mlog("DB_ERROR:" . mysqli_error($link));
}
function mlog($msg)
{
    file_put_contents(TIME_LOG_FILE, date('Y-m-d H:i:s', time()) . ":" . $msg . "\n", FILE_APPEND);
}
