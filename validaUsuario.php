<?php session_start();
    
	include_once "conectaBanco.php";
	include_once "config.php";
 
	  $conexao = new Connection();

	  $conexao->connect($host, $user, $password, $database);


	  	//inicia sessoes
	  	

	  	//Recupera o login
	  	if(empty($_POST['email-usuario']) == FALSE){
	  		$usuario = addslashes(trim($_POST['email-usuario']));

	  	}else{
	  		$usuario = FALSE;
	      echo "usuario vazios";
	    }

  
	  	if(empty($_POST['senha']) == FALSE){
	  		$senha = MD5(trim($_POST['senha']));

	  	}else{
	  		$senha = FALSE;
	      echo "senha vazios";
	    }


	  	if($usuario == FALSE || $senha == FALSE){

	      $conexao->close();
	      echo "campos vazios";
	  	}
	    else{
	        
	      $string = "SELECT  aluno.id as id, escola.id as idEscola, aluno.email as email, senha as senha1 FROM aluno,escola WHERE escola.id = aluno.id_escola and aluno.email = '".$usuario."'";

	    	$conexao->query($string);

	    	if(($dados = $conexao->fetch_assoc()) == TRUE){

	    		if(strcmp($senha, $dados['senha1']) == 0){
                                
	    			//Tudo ok! Agora passa os dados para a sessão e redireciona o usuario
	    		/*	$idAluno = $dados['id'];
	    			$idEscola = $dados['idEscola'];
                                $dadoV = []
                                $nome = "cLogin";
	    			setcookie($nome,) */
                            $_SESSION['idAluno'] = $dados['id'];
                            $_SESSION['idEscola'] = $dados['idEscola'];
	    			
						$conexao->close();
				echo "<script language='javascript' type='text/javascript'>
        alert('Parabéns,login bem sucedido !!');
      
       window.location.href='".$url."reportar.php'   </script>";
						?>
						<!DOCTYPE html>
						<html>
							<head>
								<meta charset="utf-8">
								<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
							</head>
							<body>
								<div class="w3-panel w3-green">

									<p>Bem vindo !</p>
								</div>
							</body>
						</html>
<?php

	    			
	    		}else{
	    			//senha invalida
	    			$conexao->close();
	    			echo'login errado';
	          echo "senha errada";
	    		}
	    	}else{
	    		$conexao->close();
	    		echo'login errado';
	        echo "não sei";
	    	}

	    }
	 // }else {
	 // }

?>
