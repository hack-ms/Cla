<?php
include "cabecalho.php";
?>
<!-- Caveçalho -->
<header class="display-container content wide parallax" id="home">
  <!-- <img class="image" src="fundoIndex.jpg" alt="Architecture" width="1564" height="800"> -->
  <div class="display-middle margin-top center">
    <h1 class="xxlarge text-white"><span class="italiana padding black opacity-min"><b>ESCOLA</b></span> <span class="hide-small text-black">em Dia</span></h1>
  </div>
</header>
<div class="content padding" style="max-width:1800px">

      <!-- Seção Ferramentas -->
      <div class="container padding-32" id="projects">
        <br>
        <h3 class="border-bottom border-light-grey padding-16">Escolas</h3>
      </div>


      <!-- container 1 -->
      <div class="row-padding">
<?php
    $conexao = new Connection();
    $conexao->connect($host, $user, $password, $database);
    $string = "SELECT  id as id, nome as titulo, rua as r, bairro as b, cep as cep, nota as n FROM escola ";
    $conexao->query($string);
    $total = $conexao->num_rows();
    if($total == TRUE){


            for($dados = $conexao->fetch_assoc(); $dados != NULL; $dados = $conexao->fetch_assoc())
                    {
                    $rua = $dados['r'];
                    $id = $dados['id'];
                    $titulo = $dados['titulo'] ;
                    $bairro = $dados['b'] ;
                    $cep = $dados['cep'] ;
                    $nota = $dados['n'];


    echo
        '<div class="borda-em-tudo col vinteporcento margin-bottom display-container borda">
          <a  class="bar-item" target="_blank" href="'.$url.'escola.php?id='.$id.'">
            <div class="black padding borda-baixo bar-item">
              '.$titulo.'
            </div>
            <br>
            <p> Endereço: Rua '.$rua.', '.$bairro.', CEP: '.$cep.'</p>

            <p>'.$nota.'</p>
          </a>
        </div>';
        }
            echo"</div>";
            $conexao->close();
        }
        else {
                echo "Nenhuma escola encontrada";
                 $conexao->close();
        }
 ?>
 </div>
 </div>




    <!-- Fim da Página -->
    </div>


<?php
include "rodape.php"; ?>
