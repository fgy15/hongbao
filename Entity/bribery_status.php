<?php
class bribery_status
{
    public $uid;
    public $name;
    public $msg;
    public $val;
    public $type;
    public $num;
    public $ptime;
    public $otime;
    public $count  = 0; //已领取数量
    public $status = array();

    public function __construct($bid, &$response)
    {
        $link = mysqli_connect(DB_HOST, DB_USER, DB_PWD, DB_NAME);
        if ($link) {
            $sql[0] = "SELECT b.uid, b.msg, b.val, b.type, b.num, b.ptime, u.`name`, b.otime FROM bribery AS b INNER JOIN `user` AS u ON b.uid = u.uid WHERE b.bid = '" . $bid . "';";
            $ret[0] = mysqli_query($link, $sql[0]);
            $err[0] = mysqli_error($link);
            if ($ret[0]) {
                $row = $ret[0]->fetch_row();
                if ($row[0] == "") {
                    $response->st        = 0;
                    $response->error_id  = URL_ERROR;
                    $response->error_msg = "红包id错误";
                    return;
                }
                $this->uid   = $row[0];
                $this->msg   = $row[1];
                $this->val   = $row[2];
                $this->type  = $row[3];
                $this->num   = $row[4];
                $this->ptime = $row[5];
                $this->name  = $row[6];
                $this->otime = $row[7];
                $sql[1]      = "SELECT u.uid, u.`name`, m.val, b.receivetime FROM bribery_record AS b INNER JOIN mbribery AS m ON b.mid = m.mid INNER JOIN `user` AS u ON u.uid = b.receiveid WHERE m.st = '1' AND m.bid='" . $bid . "'";
                $ret[1]      = mysqli_query($link, $sql[1]);
                $err[1]      = mysqli_error($link);

                if ($ret[1]) {
                    while ($row = $ret[1]->fetch_row()) {
                        $uid                = $row[0];
                        $name               = $row[1];
                        $val                = $row[2];
                        $time               = $row[3];
                        $this->status[$uid] = new status($val, $uid, $name, $time);
                        $this->count++;
                    }
                    $response->st   = 1;
                    $response->data = $this;
                    if (strtotime($this->otime) <= time()) {
                        $response->error_id  = BONUS_OVERTIME;
                        $response->error_msg = "红包超时";
                    }
                } else {
                    $response->st        = 0;
                    $response->error_id  = DB_ERROR;
                    $response->error_msg = mysqli_error($link);
                }

            } else {
                $response->st        = 0;
                $response->error_id  = DB_ERROR;
                $response->error_msg = mysqli_error($link);
            }
        } else {
            $response->st        = 0;
            $response->error_id  = DB_ERROR;
            $response->error_msg = "数据库连接失败：" . mysqli_error($link);
        }
    }
}
class status
{
    public $val;
    public $uid;
    public $name;
    public $time;

    public function __construct($val, $uid, $name, $time)
    {
        $this->val  = $val;
        $this->uid  = $uid;
        $this->name = $name;
        $this->time = $time;
    }
}
