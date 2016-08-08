<?php
date_default_timezone_set('Asia/Shanghai');
//数据库
define('DB_HOST', '127.0.0.1:3306');
define('DB_USER', 'root');
define('DB_PWD', '');
define('DB_NAME', 'hongbao');
//错误信息
define("JSON_SYNTAX_ERROR", "JSON_SYNTAX_ERROR");
define("DB_ERROR", "DB_ERROR");
define("USER_ERROR", "USER_ERROR");
define("COOKIE_ERROR", "COOKIE_ERROR");
define("CARID_ERROR", "CARID_ERROR");
define("ACCOUNT_ERROR", "ACCOUNT_ERROR");
define("URL_ERROR", "URL_ERROR");
define("BONUS_ERROR", "BONUS_ERROR");
define("BONUS_OVERTIME", "BONUS_OVERTIME");
//Orther
define("SYS_ACCOUNT", "0");
define("TIME_LOG_FILE", "Log/time.log");
define("OVERTIME", 2 * 60); //超时时间
