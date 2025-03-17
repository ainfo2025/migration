<?php
require_once("class.ainfoApi.php");


class apiCall extends ainfoApi
{
    private $path = 'calls/';

    public function __construct($P, $S)
    {
        parent::__construct();

        if (isset($P['f'])) {
            $this->P = $P;
            $this->S = $S;
            if (file_exists($this->path . $P['f'] . '.php')) {
                include_once($this->path . $P['f'] . '.php');
            } else {
                $this->setResult('err');
                $this->setErrorString("Function Call '{$P['f']}' is not defined");
            }
        } else {
            $this->setResult('err');
            $this->setErrorString('No Function Call defined');

        }

    }
}

$API = new apiCall($P, $S);

?>