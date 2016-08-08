<?php
require_once "../load.php";

$response = new Response;

if (isset($_COOKIE['id']) && isset($_COOKIE['token'])) {
    if (Auth::authcookie($_COOKIE['id'], $_COOKIE['token'])->flag) {
        $bid = $_GET['id'];
        if ($bid == "") {
            $response->st        = 0;
            $response->error_id  = URL_ERROR;
            $response->error_msg = "请添加红包id";

        } else {
            $st = new bribery_status($bid, $response);
        }

    }
} else {
    $response->st       = 0;
    $response->error_id = COOKIE_ERROR;
}
echo json_encode($response, JSON_UNESCAPED_UNICODE);
