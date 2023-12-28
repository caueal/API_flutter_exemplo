<?php

include 'db_connect.php';

$data = json_decode(file_get_contents("php://input"));

if (isset($data->nome) && isset($data->email) && isset($data->cep) && isset($data->saldo)){
    $nome = $data->nome;
    $email = $data->email;
    $cep = $data->cep;
    $saldo = $data->saldo;

    $stmt = $conn->prepare("INSERT INTO gandinigames1(nome, email, cep, saldo) VALUES (?, ?, ?, ?)");


    if ($stmt) {
        // Vincula os parâmetros e executa a declaração
        $stmt->bind_param("ssss", $nome, $email, $cep, $saldo);

        if ($stmt->execute()) {
            echo json_encode(array('message' => 'Criado com sucesso'));
        } else {
            echo json_encode(array('message' => 'Falha ao criar: ' . $stmt->error));
        }


        $stmt->close();
    } else {
        echo json_encode(array('message' => 'Dados inválidos'. $conn->error));

    } 
}