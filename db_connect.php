 <?php

 header("Access-Control-Allow-Origin: *");
 header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
 header("Access-Control-Allow-Headers: Content-Type");
 header("Access-Control-Allow-Credentials: true");

 $host = "localhost";
 $user = "root";
 $password = "";
 $database_name = "";

 $conn = new mysqli($host, $user, $password, $database_name);

 if ($conn->connect_error){
    die("Falha na conexão: ".$conn->connect_error);
} 