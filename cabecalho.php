<?php 
session_start();
include_once "config.php";
include_once "conectaBanco.php";

?>
<!DOCTYPE html>
<html>
  <head>
    <title>Escola em Dia</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="estilo.css">
    <link rel="apple-touch-icon" sizes="57x57" href="icones/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="icones/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="icones/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="icones/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="icones/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="icones/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="icones/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="icones/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="icones/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="icones/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="icones/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="icones/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="icones/favicon-16x16.png">
    <link href="https://fonts.googleapis.com/css?family=Italiana" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  </head>
  <body>

    <!-- Barra de Navegação -->
    <div class="top">
      <div class="bar white wide padding card">
        <!-- Botão da Esquerda -->
        <a href="https://escolaemdia.000webhostapp.com/" class="bar-item button"><span class="italiana"><b>Escola em Dia</a></b></span>

        <!-- Botões da Direita -->
        <div class="right">
			<?php			
				if(isset($_SESSION['idAluno']) == TRUE){
				echo "<a href=\"logout.php\"class=\"bar-item nuttom\">Sair</a></li>";
				echo "<a href=\"reportar.php\"class=\"bar-item nuttom\">Reportar</a></li>";
				echo "<a href=\"contato.php\"class=\"bar-item nuttom\">Contato</a></li>";
				}else{
				echo "<a href=\"entrar.php\"class=\"bar-item nuttom\">Login</a></li>";
				echo "<a href=\"reportar.php\"class=\"bar-item nuttom\">Reportar</a></li>";
				echo "<a href=\"contato.php\"class=\"bar-item nuttom\">Contato</a></li>";
				}
			?>          
        </div>
      </div>
    </div>
    
    </br></br>



