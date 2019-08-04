<?php
include("config.php");
include("conectaBanco.php"); 

	$conexao = new Connection();
	$conexao->connect($host, $user, $password, $database);
	
	//verifica se os campos estão, de fato, preenchidos. Além de impedir SQLInjection
  
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
	if(empty($_POST['senha1'])==FALSE){
		$senha = md5(trim($_POST['senha1']));
	}else{
		$senha = false;
	}
	//fim da verificação
	//força o usuario a preencher os campos, caso algum deles esteja vazio
	if($senha == false || $serie == false ||$escola == false || $email == false ){
		$conexao->close();
	}else{
	//verifica se não existem users com o mesmo nome	
	}
	
		 $string = "INSERT INTO aluno ( email, serie, senha, id_escola) VALUES ('".$email."','".$serie."','".$senha."', '".$escola."')";
		$conexao->query($string);

		$conexao->close();
		//mysqli_close($conexao);	
?>