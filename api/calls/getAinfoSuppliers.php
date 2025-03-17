<?php
/****************************************** 
http://localhost/api/?f=geAinfoSuppliers
get whole table of suppliers
GET or POST Request to transfer data to the api (application/x-www-form-urlencoded)

Access Parameters: $this->P
Access Session: $this->S (only in production version)
*******************************************/

$result = $this->query("SELECT * FROM lieferanten order by mcode");

if ($this->RECORDS > 0) {
    $this->setData($result);
    $this->setResult('ok');
    $this->setErrorDescription('alles gut :)');

} else {
    $this->setData([]);
    $this->setResult('err');
    $this->setErrorDescription('Es ist etwas schief gelaufen ):');
}
?>