<?php

include_once "cabecalho.php";

$conexao = new Connection();

$conexao->connect($host, $user, $password, $database);

$string = "SELECT  titulo as titulo FROM reclamacao WHERE id = ".$_GET['id']." ";
$conexao->query($string);
  $dados = $conexao->fetch_assoc();
  $titulo = $dados['titulo'];

?>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body class="w3-container">


<div class="content padding" style="max-width:1564px">

      <!-- Seção Ferramentas -->
      <div class="container padding-32" id="projects">
        <br>
        <h3 class="border-bottom border-light-grey padding-16"><?php echo "$titulo";?></h3>
      </div>


      <!-- container 1 -->
      <div class="row-padding">
<?php

    
    $string = "SELECT  id_escola_r as id_escola_r, titulo as titulo, assunto as assunto, corpo as corpo, data as data, avaliacao as avaliacao, andamento as andamento FROM reclamacao WHERE id = ".$_GET['id']." ";
    $conexao->query($string);
    $total = $conexao->num_rows();
    
 


    if($total == TRUE){

             $dados = $conexao->fetch_assoc();
                    
                    
                    $id_escola_r = $dados['id_escola_r'] ;
                    
                    $assunto = $dados['assunto'];
                    $corpo = $dados['corpo'];
                    $data = $dados['data'];
                    $avaliacao = $dados['avaliacao'];
                    $andamento = $dados['andamento'];
    echo

        '<div class="col  margin-bottom display-container row">
          <a  target="_blank">
            <div class="grey padding borda-baixo">
              <label>Assunto:</label>
              '.$assunto.'
              <br>
              <label>Corpo:</label>
              '.$corpo.'
              <br>
              <label>Data:</label>
              '.$data.'
              <br>
              <label>Avaliação:</label>
              '.$avaliacao.'
              <br>
              <label>Andamento:</label>
              '.$andamento.'
            </div>
            <br>
          </a>
        </div>

								';

	echo"</div>";
		echo"</div>";
	 $conexao->close();
	}
	
			
	else {
		echo "Denuncia não encontrada!";
		 $conexao->close();
	}

 ?>
 </div>

<?php

 include_once "rodape.php"; ?>
