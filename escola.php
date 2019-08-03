<?php
include_once "config.php";
include_once "conectaBanco.php";
include_once "cabecalho.php";
?>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body class="w3-container">


<div class="content padding" style="max-width:1564px">

      <!-- Seção Ferramentas -->
      <div class="container padding-32" id="projects">
        <br>
        <h3 class="border-bottom border-light-grey padding-16">Lista de Denúncias</h3>
      </div>


      <!-- container 1 -->
      <div class="row-padding">
<?php

    $conexao = new Connection();

    $conexao->connect($host, $user, $password, $database);

    $string = "SELECT  id as id, id_escola_r as id_escola_r, titulo as titulo, assunto as assunto, corpo as corpo, data as data, avaliacao as avaliacao, andamento as andamento FROM reclamacao ";
    $conexao->query($string);
    $total = $conexao->num_rows();


    if($total == TRUE){
            echo "<br>A busca retornou ". $total ." resultado(s)!";

            for($dados = $conexao->fetch_assoc(); $dados != NULL; $dados = $conexao->fetch_assoc())
                    {
                    $id = $dados['id'];
                    $id_escola_r = $dados['id_escola_r'] ;
                    $titulo = $dados['titulo'] ;
                    $assunto = $dados['assunto'];
                    $corpo = $dados['corpo'];
                    $data = $dados['data'];
                    $avaliacao = $dados['avaliacao'];
                    $andamento = $dados['andamento'];
    echo

        '<div class="col  margin-bottom display-container row">
          <a  target="_blank" href="paginaDenuncia.php">
            <ul class="grey padding borda-baixo">
              '.$titulo.'
            </ul>
            <br>
          </a>
        </div>

								';

				}
				echo"</div>";
				 $conexao->close();
			}
			else {
				echo "Nenhuma denuncia cadastrada nessa escola!";
				 $conexao->close();
			}

 ?>
 </div>

<?php

 include_once "rodape.php"; ?>

