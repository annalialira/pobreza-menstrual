<?php 
// conexao com o banco 
include_once 'conexao.php';
?>
  
 <link rel="stylesheet" href="style.css?t=<?php echo date('YmdHis').rand(1,999999)?>">
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Text:ital@0;1&display=swap" rel="stylesheet">

 <title>Pobreza Menstrual no Sistema Carcerário Brasileiro</title>
</head>

 <body>

<header >
  <h1 class="titulo">Pobreza Menstrual no Sistema Carcerário Brasileiro</h1>
</header> 

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
          <div class="block">
            <h2><a class = "cordolink" href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['titulo'];?></a></h2>
            <p href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['subtitulo'];?></p>
            
          </div>
          
          <?php
          }
          ?>
  </div>
 </div>
 <footer id="sticky-footer" class="flex-shrink-0 py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small >Giovanna Pandolfo &copy; Anna Lia</small>
    </div>
  </footer>
 </body>