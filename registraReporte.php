<?php
session_start();

echo $_SESSION['idAluno'];
echo $_SESSION['idEscola'];
include_once "conectaBanco.php";
include_once "config.php";




if($_SESSION['idAluno'] != false){



  $conexao = new Connection();

  $conexao->connect($host, $user, $password, $database);




  //verifica se os campos nao estao vazios(pois apenas com a verificacao do html, nao se confirma nada),
  //se nao estao, retira os espacos antes e depois e protege contra sql injection*/
  if(empty($_POST['titulo'])==FALSE)
  {
   $titulo = addslashes(trim($_POST['titulo']));

  }else
  {
    $titulo = false;
  }//ok
  if(empty($_POST['assunto'])==FALSE)
  {
    $assunto = addslashes(trim($_POST['assunto']));
  }else
  {
     $assunto = false;
  }

  if(empty($_POST['texto'])==FALSE){
    $texto = trim($_POST['texto']);
  }else
  {
    $texto = false;
  }


//vefica se estao vazios, se estao vazio, chama o metodo dos espertinhos
  if(($texto == false) || ($assunto == false) || ($titulo==false))
  {
    $conexao->close();


  }else
  {

    $string = "SELECT id from aluno where id like '".$_SESSION['idAluno']."'";
    $conexao->query($string);
    $total = $conexao->num_rows();//verifica se algum linha foi encontrada e retorna booleano
    if ($total == FALSE)
    {
      
        $string = "INSERT INTO reclamacao (id_escola_r, id_aluno, titulo, assunto, corpo) VALUES ('".$_SESSION['idEscola']."','".$_SESSION['idAluno']."','".$titulo."', '".$assunto."', '".$texto."')";
        $conexao->query($string);
       
        $conexao->close();
        
        echo "<script language='javascript' type='text/javascript'>
        alert('Parabéns, reporte cadastrado com sucesso !!');
      
       window.location.href='".$url."'   </script>";
      
    }else
    {
      $conexao->close();

    }
  }

}

?>