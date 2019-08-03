<!DOCTYPE html>
<?php 
include_once "cabecalho.php";
?>
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
        <form method="POST" action="registroUsuarioBanco.php">
          
            <div class="border campo white">
            <input class="input-registro input-label" type="email" required placeholder=" " id="email-usuario" name="email-usuario" maxlength="256">
            <label class="label-label" for="email-usuario">Email</label>
          </div>
          
            
           
           
          
          <div class="border campo white">
            <input class="input-registro input-label" type="password" required placeholder=" " name="senha1-usuario" id="senha1" minlength="8">
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


    <!-- Rodapé -->
    <!-- <footer class="center black padding-16">
      <p>Powered by <a href="http://www.ifms.edu.br/home" title="IFMS" target="_blank" class="hover-text-green">IFMS</a> and <a href="https://www.w3schools.com" title="W3" target="_blank" class="hover-text-green">W3Schools</a></p>
    </footer> -->

    <script type="text/javascript">
      // verifica as SENHAS
      function checksenha_(){
        //Coloca as senhas em variaveis
        var senha_1 = document.getElementById('senha1');
        var senha_2 = document.getElementById('senha2');
        //Coloca o span 'mensagem' em uma variavel
        var mensagem = document.getElementById('mensagem');
        //Cores a serem usadas
        var verde = "#66cc66";
        var vermelho = "#ff6666";
        var branco = '#FFFFFF'
        //Compara os valores das senhas
        if(senha_1.value == senha_2.value){//Se as senhas coincidirem
            //Seta a cor do input pra verde
            // senha_2.style.backgroundColor = verde;
            //Seta a mensagem do span para verde e manda a mensagem positiva
            // mensagem.style.color = verde;
            // mensagem.innerHTML = "As senhas coincidem!"

            //Seta a cor do input pra branco
            senha_2.style.backgroundColor = branco;
            //Seta a mensagem do span para verde e manda a mensagem positiva
            mensagem.style.color = branco;
            mensagem.innerHTML = "";
        }else{//Se as senhas não coincidirem
            //Seta a cor do input pra vermelho
            senha_2.style.backgroundColor = vermelho;
            //Seta a mensagem do span para vermelho e manda a mensagem negativa
            mensagem.style.color = vermelho;
            mensagem.innerHTML = "As senhas não coincidem!"
        }
      }
    </script>
    <script type="text/javascript" src="formatacao.js"></script>

    </script>
  </body>
</html>