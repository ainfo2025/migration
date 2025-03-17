<?php
// Simple Example Mysql/PDO midlayer for ease of use...

//include_once "ainfoconfig.php"; // local config -> TF
include_once "config.php";    // your config

class TFDB
{
  public $RECORDS = 0;
  public $ROWS = 0;
  public $FIELDS = [];
  public $FIELDNAMES = [];


  public $pdo = null, $fetchstyle = PDO::FETCH_ASSOC;

  function __construct()
  {
    global $config;
    if ($config['port'])
      $port = $config['port'];
    else
      $port = '3306';
    if ($config['db'])
      $db = $config['db'];
    else
      $db = '';

    $server = "mysql:dbname=$db;host={$config['host']}; port=$port";
    $options = array
    (
      PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
      PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
      PDO::ATTR_ERRMODE => PDO::ERRMODE_SILENT,
      PDO::ATTR_PERSISTENT => true
    );


    if (!isset($this->pdo)) {
      try {
        $this->pdo = new PDO($server, $config['user'], $config['pw'], $options);
      } catch (PDOException $e) {
        //print_r($e);
      }
    }
  }


  function query($sql, $debug = 0)
  {
    if (!$this->pdo)
      return 0;
    $this->RECORDS = 0;
    $this->FIELDS = 0;
    $this->FIELDNAMES = array();
    $this->ROWS = array();

    try {
      $sth = $this->pdo->query($sql);
      $this->RECORDS = $sth->rowCount();

    } catch (PDOException $e) {
      //print_r($e);
    }

    if ($this->RECORDS) {
      $this->ROWS = $sth->fetchAll($this->fetchstyle);
      $this->FIELDNAMES = array_keys($this->ROWS[0]);
      $this->FIELDS = count($this->FIELDNAMES);
      return ($this->ROWS);
    } else {
      return [];
    }
  }

  function execute($sql, $debug = 0)
  {
    if (!$this->pdo)
      return [];
    $this->pdo->exec($sql);
    $this->INSERT_ID = $this->pdo->lastInsertId();
  }



  function disconnect()
  {
    $this->pdo = null;
  }

} //end class


?>