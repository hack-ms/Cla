<?php

include_once "cabecalho.php";
?>
<div class="content padding" style="max-width:1564px">

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

        '<div class="col vinteequatroporcento margin-bottom display-container borda">
          <a  target="_blank" href="'.$url.'escola.php?id='.$id.'">
            <div class="black padding borda-baixo">
              '.$titulo.'
            </div>
            <br>
            <p> Endereço: Rua '.$rua.','.$bairro.' Cep: '.$cep.'</p>
            
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

include_once "rodape.php"; ?>