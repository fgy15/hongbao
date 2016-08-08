<?php

require_once "load.php";

$postdata = file_get_contents("php://input");
$obj      = json_decode($postdata, true);
$res      = new Response;
if (json_last_error() == JSON_ERROR_NONE && array_key_exists('name', $obj) && array_key_exists('pwd', $obj)) {
    $link = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_NAME);
    if ($link) {
        $sql = "SELECT pwd from  user WHERE uid='" . $obj['name'] . "';";
        //echo $sql;
        $ret = mysqli_query($link, $sql);
        if ($ret) {
            $count = 0;
            while ($row = $ret->fetch_row()) {
                $pwd = $row[0];
                $count++;
            }
            if ($count == 1 && md5($obj['pwd']) == $pwd) {
                setcookie("id", $obj['name'], time() + 3600 * 24);
                setcookie("token", md5($obj['name'] + $pwd), time() + 3600 * 24);
            } else {
                setcookie("id", "", 0);
                setcookie("token", "", 0);
                $res->error_id  = USER_ERROR;
                $res->error_msg = "账户不存在或密码错误";
            }
        } else {
            $res->error_id  = DB_ERROR;
            $res->error_msg = mysqli_error($link);
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
