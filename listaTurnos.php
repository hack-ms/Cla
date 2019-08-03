<?php

function listaTurnos($conexao) {
	
    $liTu = array();
    $query = "select * from turno";
    $resultado = mysqli_query($conexao, $query);
    while($li = mysqli_fetch_assoc($resultado)) {
        array_push($liTu, $li);
    }
    
	return $liTu;
}