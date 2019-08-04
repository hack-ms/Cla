<?php

function listaTurnos($conexao) {
	
    $liTu = array();
    $query = "SELECT * FROM turno";
    $resultado = mysqli_query($conexao, $query);
    while($li = mysqli_fetch_assoc($resultado)) {
        array_push($liTu, $li);
    }
    
	return $liTu;
}