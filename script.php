<!DOCTYPE html>
<html>
  <head>
    <title>Add Escola</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="estilolabel.css">
    <link rel="stylesheet" href="estilo.css">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Italiana" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Spectral+SC" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  </head>
  <body class="registro-parallax">

    <!-- Conteudo da Pagina -->
    <div class="content padding display-container center content wide flex-center" style="max-width:1564px">


      <!-- Seção de Registro -->
      <div class="container padding-24 center third registro">
        <h3 class="border-bottom padding-8">Registro de Nova Escola</h3>

        <form method="POST" action="registroEscolaBanco.php">
          <textarea class="input input-registro section border padding" name="texto" rows="8" cols="80"></textarea>
          <br>
          <button class="button black padding large" value="registrar" type="submit" name="registrar">
            <i class="fa fa-paper-plane"></i> REGISTRAR
          </button>
        </form>
      </div>
    </div>

    <!-- Fim da Página -->


  </body>
</html>
