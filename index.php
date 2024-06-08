<?php 
// conexao com o banco 
include_once 'conexao.php';
?>

 <link rel="stylesheet" href="style.css">;
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Text:ital@0;1&display=swap" rel="stylesheet">
 <title>Pobreza Menstrual no Sistema Carcerário Brasileiro</title>
 <body >

<header class="row">
  <a class="navbar-brand ml-2"  href="#">Pobreza Menstrual</a>
  
</nav>
</php>
<main id="index" class="container">
          <div class="row">
          <?php 
          $sql = "SELECT * FROM artigo";
          // executa o comando SQL no banco e retornar os dados
          $result = mysqli_query( $conexao, $sql );
          // laco de repeticao 
          while($row = mysqli_fetch_array($result)){       
          ?>
          <div class="col-6 ">
            <a href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['titulo'];?></a>
            <p href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['subtitulo'];?></p>  
          </div>
          <?php
          }
          ?>
 </div> 
 </header>
 </body>