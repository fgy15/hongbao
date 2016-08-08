<?php
/**
 *
 */
class Response
{
    public $st;
    public $error_id;
    public $error_msg;
    public $data;

    public function __construct()
    {
        unset($this->error_id);
        unset($this->error_msg);
        unset($this->data);
    }
}
