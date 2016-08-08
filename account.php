<?php
require_once "load.php";

$uid;
$response = new Response;

if (isset($_COOKIE['id']) && isset($_COOKIE['token'])) {
    if (Auth::authcookie($_COOKIE['id'], $_COOKIE['token'])->flag) {
        $uid = $_COOKIE['id'];
        task($response, $uid);
    }
} else {
    $response->st       = 0;
    $response->error_id = COOKIE_ERROR;
}
echo json_encode($response, JSON_UNESCAPED_UNICODE);

function task(&$response, $uid)
{
    $link = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_NAME);
    if ($link) {
        $account        = Account::getaccountid($link, $uid);
        $account_val    = Account::getaccountval($link, $account);
        $response->st   = 1;
        $response->data = $account_val;
    } else {
        $response->st        = 0;
        $response->error_id  = DB_ERROR;
        $response->error_msg = "数据库连接失败：" . mysqli_error($link);
    }
}
