<?php

function listaSeries($conexao) {
	
    $liSe = array();
    $query = "SELECT * FROM series";
    $resultado = mysqli_query($conexao, $query);
    while($li = mysqli_fetch_assoc($resultado)) {
        array_push($liSe, $li);
    }
    
	return $liSe;
}