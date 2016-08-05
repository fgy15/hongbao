<?php
class my_bribery_status
{
    public $val;
    public $bribery_status;
    public function __construct($val, $bribery_status)
    {
        $this->val            = $val;
        $this->bribery_status = $bribery_status;
    }
}
