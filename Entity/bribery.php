<?php
class bribery
{
    public $bid;
    public $val;
    public $uid;
    public $msg;
    public $num;
    public $type;
    public $ptime;
    public $otime;
    public $mbriberys;

    public function __construct($val, $uid, $msg, $num, $type)
    {
        $this->bid   = date('Y-m-d H:i:s', time()) . ":" . $uid . ":" . $val . ":" . $num . ":" . md5(date('Y-m-d H:i:s', time()) . $uid . $val . $num . rand(0, 1000));
        $this->val   = $val;
        $this->uid   = $uid;
        $this->msg   = $msg;
        $this->num   = $num;
        $this->type  = $type;
        $this->ptime = date('Y-m-d H:i:s', time());
        $this->otime = date('Y-m-d H:i:s', time() + OVERTIME);
        $bonus_min   = 0.01;
        if ($this->type == 1) //均分
        {
            $mvalue = round($val / $num, 2);
            for ($i = 0; $i < $num - 1; $i++) {
                $this->mbriberys[$i] = new mbribery($this->bid . ':' . $i, $this->bid, $mvalue);
            }
            $this->mbriberys[$num - 1] = new mbribery($this->bid . ':' . $i, $this->bid, $val - $mvalue * ($num - 1));

        } elseif ($this->type == 2) {
            //随机生成
            $bouns          = array();
            $bonus_left     = $val - $bonus_min * $num;
            $bonus_left_num = $num;
            for ($i = 0; $i < $num - 1; $i++) {
                $tmp       = round(rand(0, round($bonus_left / $bonus_left_num, 2) * 200) / 100, 2);
                $bouns[$i] = round($bonus_min + $tmp, 2);
                $bonus_left_num--;
                $bonus_left = round($bonus_left - $tmp, 2);
            }
            $bouns[$num - 1] = round($bonus_min + $bonus_left, 2);
            shuffle($bouns);
            foreach ($bouns as $i => $mvalue) {
                $this->mbriberys[$i] = new mbribery($this->bid . ':' . $i, $this->bid, $mvalue);
            }
        }
    }
}
class mbribery
{
    public $mid;
    public $bid;
    public $val;
    public $st;
    public function __construct($mid, $bid, $val)
    {
        $this->mid = $mid;
        $this->bid = $bid;
        $this->val = $val;
        $this->st  = 0;
    }
}
