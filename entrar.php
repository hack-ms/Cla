<?php 
include_once "cabecalho.php";
?>
<!DOCTYPE html>
<html>
  <head>
    <title>Cadastro Usuário</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="estilo.css">
    <link rel="stylesheet" href="estiloLabel.css">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Italiana" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Spectral+SC" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  </head>
  <body class="registro-usuario-parallax">
    <!-- Conteudo da Pagina -->
	<br><br>
    <div class="content padding display-container content wide flex-center" style="max-width:1564px">

      <!-- Seção de Registro -->
      <div class="container padding-24 third registro">
        <h3 class="border-bottom padding-8">Entrar</h3>
        <form method="POST" action="validaUsuario.php">
          
            <div class="border campo white">
            <input class="input-registro input-label" type="email" required placeholder=" " id="email-usuario" name="email-usuario" maxlength="256">
            <label class="label-label" for="email-usuario">Email</label>
          </div>
          
          <div class="border campo white">
            <input class="input-registro input-label" type="password" required  name="senha" id="senha1" minlength="8">
            <label class="label-label" for="senha1">Senha </label>
          </div>
         
          
          <div class=" campo white">
            
                <label class="label-label w3-red" >Não possui <a href="cadastroAluno.php" >cadastro?</a> </label>
          </div>
          <button class="button black section padding" value="registrar" type="submit" name="registrar-usuario">
            <i class="fa fa-paper-plane"></i> ENTRAR
          </button>
            
        </form>
        
      </div>

    <!-- Fim da Página -->
    </div>
  </body>
</html>