<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="script.js">
</head>
<body>
<?php
$servername = "localhost";
$database = "pobreza";
$username = "root";
$password = "";
// Cria a conexao
$conexao = mysqli_connect($servername, $username, $password, $database);
// Checa a conexao
if (!$conexao) {
    die("Connection failed: " . mysqli_connect_error());
}
?>