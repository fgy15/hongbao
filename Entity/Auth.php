<?php
/**
 *鉴权类
 */
class Auth
{
    public $result;
    public static function authcookie($id, $token)
    {
        $result = new AuthResult();
        $link   = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_NAME);
        if ($link) {
            $sql = "SELECT pwd from  user WHERE uid='" . $id . "';";
            $ret = mysqli_query($link, $sql);
            if ($ret) {
                $count = 0;
                while ($row = $ret->fetch_row()) {
                    $pwd = $row[0];
                    $count++;
                }
                if ($count == 1 && md5($id + $pwd) == $token) {
                    $result->flag = true;
                }
            } else {
                $result->flag      = false;
                $result->error_id  = DB_ERROR;
                $result->error_msg = mysqli_error($link);
            }
        } else {
            $result->flag      = false;
            $result->error_id  = DB_ERROR;
            $result->error_msg = "数据库连接失败：" . mysqli_error($link);
        }
        return $result;
    }
}
/**
 *
 */
class AuthResult
{
    public $flag;
    public $error_id;
    public $error_msg;
}
