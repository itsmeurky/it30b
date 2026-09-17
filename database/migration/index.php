<?php

//database connection
$host = 'localhost';
$db = 'it30b_lab_db';
$user = 'root';
$pass = '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host; dbname=$db; charset=$charset"; 


$options = [
    PDO::ATTR_ERRMODE =>  PDO::ERRMODE_EXEPTION,
    PDO::ATTR_DEAFULT_FETCH_MODE =>  PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => FALSE,
];

try{
    $pdo = new PDO($dsn, $user, $pass, $options);
    echo 'connection successful';
}catch(PDOException $e) {
    die("Database connecton failed" . $e->getmessage());
}

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>