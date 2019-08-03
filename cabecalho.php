<?php 
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
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Italiana" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  </head>
  <body>

    <!-- Barra de Navegação -->
    <div class="top">
      <div class="bar white wide padding card">
        <!-- Botão da Esquerda -->
        <a href="<?php $url ?>" class="bar-item button"><span class="italiana"><b>Escola</b></span> em Dia</a>

        <!-- Botões da Direita -->
        <div class="right hide-small">
            <a href="entrar.php" class="bar-item button">Login</a>
          <!-- <a href="#projects" class="bar-item button">Ferramentas</a> -->
          
          <a href="#contact" class="bar-item button">Contato</a>
          <a href="<?php $url ?>/reportar.php" class="bar-item button">REPORTAR</a>
        </div>
      </div>
    </div>

    <!-- Caveçalho -->
    <!-- <header class="display-container content wide parallax" id="home">
      <!-- <img class="image" src="fundoIndex.jpg" alt="Architecture" width="1564" height="800"> 
      <div class="display-middle margin-top center">
        <h1 class="xxlarge text-white"><span class="italiana padding black opacity-min"><b>LIVING</b></span> <span class="hide-small text-black">Scripture</span></h1>
      </div>
    </header>--!>




