<?php
	include "config.php";
	include "connection.php";
	$conexao = new Connection();

	$conexao->connect($host, $user, $password, $database);

	echo "<br/>";


	// Inicia sessões 
	session_start(); 
	
	if(empty($_POST['email'])==FALSE){
		$email = addslashes(trim($_POST['email']));
	}else{
		$email = false;
	}
  
	if(empty($_POST['senha1'])==FALSE){
		$senha1 = addslashes(trim($_POST['senha1']));
	}else{
		$senha1 = false;
	}
	
    $string = "SELECT  email, senha from aluno ";
    $conexao->query($string);
    $total = $conexao->num_rows();


    if($total == TRUE){
        for($dados = $conexao->fetch_assoc(); $dados != NULL; $dados = $conexao->fetch_assoc()){
			$aemail = $dados['email'];
			$asenha = $dados['senha'];
			if($email == $aemail && $senha == %asenha){
				$aux = 1;
				$string = "SELECT  id, id_escola from aluno where email like '".$email."'";
				$conexao->query($string);
				$dados1 = $conexao->fetch_assoc();
				
				$_SESSION['nome_usuario'] = $login; 
				$_SESSION['Id'] = $dados1['id'];
				$_SESSION['Id_escola'] = $dados1['id_escola'];
				$conexao->close();
				header("Location: perfil.php");
				exit;
			}
		}
		if($aux != '1'){
			header("Location: index.php");
			$conexao->close();
		}
		$conexao->close();
	}		
?>