<?php
include("config.php");
include("Connection.php"); 

	$conexao = new Connection();
	$conexao->connect($host, $user, $password, $database);
	
	//verifica se os campos estão, de fato, preenchidos. Além de impedir SQLInjection
	if(empty($_POST['nome'])==FALSE){
    $nome = addslashes(trim($_POST['nome']));
	}else{
    $nome = false;
	}
  
	if(empty($_POST['email'])==FALSE){
		$email = addslashes(trim($_POST['email']));
	}else{
		$email = false;
	}
	
	if(empty($_POST['escola'])==FALSE){
		$escola = addslashes(trim($_POST['escola']));
	}else{
		$escola = false;
	}
	
	if(empty($_POST['serie'])==FALSE){
		$serie = addslashes(trim($_POST['serie']));
	}else{
		$serie = false;
	}
	
	if(empty($_POST['serie'])==FALSE){
		$serie = addslashes(trim($_POST['serie']));
	}else{
		$serie = false;
	}
	
	if(empty($_POST['turno'])==FALSE){
		$turno = addslashes(trim($_POST['turno']));
	}else{
		$turno = false;
	}
	
	if(empty($_POST['senha1'])==FALSE){
		$senha = md5(trim($_POST['senha1']));
	}else{
		$senha = false;
	}
	//fim da verificação
	//força o usuario a preencher os campos, caso algum deles esteja vazio
	if($senha == false || $turno == false || $serie == false ||$escola == false || $email == false || $nome == false){
		$conexao->close();
		preenche_campo();
	}else{
	//verifica se não existem users com o mesmo nome	
	}
	
		$string = "INSERT INTO aluno(`id_escola`, `nome`, `email`, `serie`, senha) VALUES ('".$_POST["escola"]."', '".$_POST['nome']."', '".$_POST['email']."', '".$_POST['serie']."', '".$_POST['senha1']."')";
		$conexao->query($string);

		$conexao->close();
		//mysqli_close($conexao);	
?>