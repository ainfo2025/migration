<?php

require_once ("class.TFDB.php");

class ainfoApi extends TFDB{
    private $result = [
        'result' => 'err',
        'errString' => '',
        'debug' => '',
        'data' => null
    ];

    public function __construct()
    {
        parent::__construct();
    }

    public function setResult($r){
        if ($r == 'err' || $r == 'ok'){
            $this->result['result'] = $r;
            return;
        }
        $this->result['result'] = 'err';
        $this->result['errString'] = 'Result can only be "err" or "ok"';
    }
    
    public function setErrorString($s){
        $this->result['errString'] = $s;
    }

    public function setData($d){
        $this->result['data'] = $d;
    }

    public function getResult(){
        return $this->result;
    }

    public function getData(){
        return $this->result['data'];
    }

    public function setValue($k,$v){
        $this->result[$k] = $v;
    }

    public function setDebug($s){
        $this->result['debug'] = $s;
    }
    

    public function dump(){
        print "<pre>";print_r($this);print "</pre>";
    }

    public function dumpJSON(){
        print json_encode($this->result);
    }
}

?>