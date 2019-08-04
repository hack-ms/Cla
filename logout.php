<?php
session_start();
include_once 'config.php';

if(isset($_SESSION['idAluno']) == true){
    session_destroy();
    echo "<script language='javascript' type='text/javascript'>
        alert('Logout bem sucedido!!');
      
       window.location.href='".$url."'   </script>";
}

?>


