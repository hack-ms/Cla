<?php
    include_once "config.php";
    include_once "conectaBanco.php";

    $conexao = new Connection();
    $conexao->connect($host, $user, $password, $database);

    $string = "SELECT  * FROM assunto ";
    $conexao->query($string);
    $total = $conexao->num_rows();

    $liSe = array();
    if($total == TRUE){

		for($li2 = $conexao->fetch_assoc(); $li2 != NULL; $li2 = $conexao->fetch_assoc()) {
			array_push($liSe, $li2);
		}	
		 $conexao->close();
	}
	
	else {
	echo "Nenhum assunto encontrado encontrada";
	$conexao->close();
	}

?>
<!DOCTYPE html>
<html>
  <head>
    <title>Reportar</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="estilo.css">
    <link rel="stylesheet" href="estiloLabel.css">
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
    <link href="https://fonts.googleapis.com/css?family=Spectral+SC" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  </head>
	<body class="registro-usuario-parallax">

    <!-- Barra de Navegação -->
		<div class="top bar white wide padding card">
		<!-- Botão da Esquerda (redirecionando para a pag principal)-->
		<a href="index.php" class="bar-item button"><span class="italiana"><b>Escola</b></span> em Dia</a>
		</div>

    <br><br><br><br>

    <!-- Conteudo da Pagina -->
		<div class="content padding display-container content wide flex-center" style="max-width:1764px">

		  <!-- Seção de Registro -->
			<div class="container padding-24 third registro">
				<h3 class="border-bottom padding-8">Reportar</h3>
				<form method="POST" action="registraReporte.php">
			  
						<div class="border campo white">
							<input class="input-registro input-label" type="text" required placeholder=" " id="email-usuario" name="titulo" maxlength="256">
							<label class="label-label" for="email-usuario">Título</label>
					</div>
					Assunto
					<div class="border campo white">
						<select name="assunto" class="form-control" required>
							<option value = "">Selecione</option>
							<?php foreach($liSe as $li) : ?>
							<option value="<?=$li['id']?>"><?=$li['nome']?></option>
							<?php endforeach ?>
						</select>
					</div>
				 
				  <textarea class="input input-registro section border padding" name="texto" rows="8" cols="80"></textarea>
				  <br>
				    <p>Você está anônimo(a) <i class="fas fa-id-card"></i></p>
					<button class="button black section padding" value="registrar" type="submit" name="registrar-usuario">
					<i class="fa fa-paper-plane"></i> REPORTAR
					</button>	
				</form>
			
			</div>

		<!-- Fim da Página -->
		<?php
		include "rodape.php"; ?>


		<script type="text/javascript" src="formatacao.js"></script>

		</script>
	  </body>
</html>