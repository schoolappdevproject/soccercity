<?php

require 'vendor/autoload.php';

$database = new medoo([
    'database_type' => 'mysql',
    'database_name' => 'soccercity_db',
    'server' => 'localhost:8889',
    'username' => 'root',
    'password' => 'mysql',
    'charset' => 'utf8'
]);

?>
