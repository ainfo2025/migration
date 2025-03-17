<?php
/****************************************** 
http://localhost/api/?f=geAinfoSuppliers
get whole table of suppliers
GET or POST Request to transfer data to the api (application/x-www-form-urlencoded)

Access Parameters: $this->P
Access Session: $this->S (only in production version)
*******************************************/

$this->setResult('err');

$result = $this->query("SELECT * FROM lieferanten order by mcode");

if ($this->RECORDS > 0) {
    $this->setData($result);
    $this->setResult('ok');
} else {
    $this->setData([]);
    $this->setResult('err');
}
?>