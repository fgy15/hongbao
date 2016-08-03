<?php
/**
 *
 */
class Account
{
    public static function getcardval1($link, $cardid, $pwd)
    {
        //echo "getcardval";
        $sql = "SELECT val from  card WHERE cardid='" . $cardid . "' and pwd='" . $pwd . "';";
        $ret = mysqli_query($link, $sql);
        if ($ret) {
            $count = 0;
            while ($row = $ret->fetch_row()) {
                $val = $row[0];
                $count++;
            }
            if ($count == 1) {
                return $val;
            }
        } else {
            echo "error";
        }
    }
    public static function getcardval2($link, $cardid)
    {
        $sql = "SELECT val from  card WHERE cardid='" . $cardid . "';";
        $ret = mysqli_query($link, $sql);
        if ($ret) {
            $count = 0;
            while ($row = $ret->fetch_row()) {
                $val = $row[0];
                $count++;
            }
            if ($count == 1) {
                return $val;
            }
        } else {
            echo "error";
        }
    }
    public static function getaccountval($link, $account)
    {
        //echo "getaccountval";
        $sql = "SELECT val from  account WHERE account='" . $account . "';";
        $ret = mysqli_query($link, $sql);
        if ($ret) {
            $count = 0;
            while ($row = $ret->fetch_row()) {
                $val = $row[0];
                $count++;
            }
            if ($count == 1) {
                return $val;
            }
        } else {
            echo "error";
        }
    }

    public static function getaccountid($link, $uid)
    {
        $sql = "SELECT account from  account WHERE uid='" . $uid . "';";
        $ret = mysqli_query($link, $sql);
        if ($ret) {
            $count = 0;
            while ($row = $ret->fetch_row()) {
                $account = $row[0];
                $count++;
            }
            if ($count == 1) {
                return $account;
            }
        } else {
            echo "error";
        }
    }

}
