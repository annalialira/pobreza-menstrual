<?php 
// conexao com o banco 
include_once 'conexao.php';
?>
  
 <link rel="stylesheet" href="style.css?t=<?php echo date('YmdHis').rand(1,999999)?>">
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Text:ital@0;1&display=swap" rel="stylesheet">
 <link rel="shortcut icon" type="imagex/png" href="img/icone.png">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
 <title>Pobreza Menstrual no Sistema Carcerário Brasileiro</title>
</head>

<body>

  <header>
  <h1 class="titulo">Pobreza Menstrual no Sistema Carcerário Brasileiro</h1>
  </header> 

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
      
    <footer>
    <a href="http://https://github.com/annalialira" target="_blank"><i class="fa-brands fa-github"></i></a>
    <a href="https://github.com/GiovannaPandolfo" target="_blank"><i class="fa-brands fa-github"></i></a>
    <p class="trabalho">Acesse o projeto completo: <a href="https://senacrsedu-my.sharepoint.com/:w:/g/personal/04446713078_senacrs_edu_br/ETS8ZVuFlMdBnrGr1kf4kSIBOkLrLVimdxusgHfzWuTmRQ?e=Pe5fn0" ><strong>Pobreza Menstrual no Sistema Carcerário Brasileiro</strong></a></p>
    </footer>
</body>