<?php 
// conexao com o banco 
include_once 'conexao.php';
?>

 <link rel="stylesheet" href="./style.css?v=<?php echo rand(0,999999);?>">
 <title>Pobreza Menstrual</title>
 <body >

<header class="row">     
<nav class="navbar col-12 navbar-dark bg-dark" id="hh">
  <a class="navbar-brand ml-2"  href="#">Pobreza Menstrual</a>
  
</nav>
</php>
<main id="index" class="container">
          <div class="row">
          <?php 
          $sql = "SELECT * FROM pobreza";
          // executa o comando SQL no banco e retornar os dados
          $result = mysqli_query( $conexao, $sql );
          // laco de repeticao 
          while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){       
          ?>
          <div class="col-6 ">
            <a href="questao.php?area=<?php echo $row['id'];?>"><div><img class="imagens" src="./img/<?php echo $row['foto'];?>" alt=""></div></a>
            
          </div>
          <?php
          }
          ?>
 </div> 
 </header>
 </body>
 <?php 
include_once 'footer.php';
?>
