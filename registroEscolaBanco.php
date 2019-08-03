<?php
  include 'conectaBanco.php';
  include 'config.php';


  $texto = preg_split( "/\r\n|\n|\r/", $_POST[ 'texto' ] );
  $registrar = $_POST['registrar'];

  if (isSet($texto)) {
    $texto[6] = str_replace("DIRETORA:", "", $texto[6], $count);
    $texto[6] = str_replace("DIRETOR:", "", $texto[6], $count);
    $texto[4] = str_replace("FONE: (0xx67) ", "", $texto[4], $count);
    $texto[3] = str_replace("-", "", $texto[3], $count);
    if (isSet($texto[7])) {
      $texto[7] = str_replace("DIRETORA ADJUNTA: ", "", $texto[7], $count);
      $texto[7] = str_replace("DIRETOR ADJUNTO: ", "", $texto[7], $count);
    }else{
      $texto[7] = "-";
    }

  }
  $conexao = new Connection();
  $conexao->connect($host, $user, $password, $database);
  $string = "INSERT INTO escola (id_cidade, nome, rua, bairro, CEP, telefone, email, diretor, adjunto) VALUES (1, '$texto[0]', '$texto[1]', '$texto[2]', '$texto[3]', '$texto[4]', '$texto[5]', '$texto[6]', '$texto[7]')";
  $conexao->query($string);
  $conexao->close();

  header("Location:script.php");
?>
