<?php 
include_once 'conexao.php';

$artigoid = $_GET['id'];
?>
<link rel="stylesheet" href="style.css?t=<?php echo date('YmdHis').rand(1,999999)?>">
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Text:ital@0;1&display=swap" rel="stylesheet">
 <link rel="shortcut icon" type="imagex/png" href="img/icone.png">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
 <title>Pobreza Menstrual no Sistema Carcerário Brasileiro</title>
</head>

 <body class="bodyartigo">

<header>
  <a href="index.php" class="cordolink"><h1 class="titulo">Pobreza Menstrual no Sistema Carcerário Brasileiro</h1></a>
</header>
 <link rel="stylesheet" href="style.css?t=<?php echo date('YmdHis').rand(1,999999)?>">

<?php 
    $sql = "SELECT * FROM artigo WHERE artigoid = $artigoid";
    $result = mysqli_query( $conexao, $sql );
    $row = mysqli_fetch_array($result);    
    ?>
    <div class="outrapagina">
    <h2><a class="linkcor" href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['titulo'];?></a></h2>
    <p class="subtitulo"href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['subtitulo'];?></p>
    <div class="textoartigo"><p href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['texto'];?></p></div>
    <strong><p class="autor"href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['autor'];?></p></strong>
    <img src="img/<?php echo $row['imgprincipal'];?>" alt="" srcset="">
    </div>
    <footer>
    <p class="trabalho">Acesse o projeto completo: <a href="https://senacrsedu-my.sharepoint.com/:w:/g/personal/04446713078_senacrs_edu_br/ETS8ZVuFlMdBnrGr1kf4kSIBOkLrLVimdxusgHfzWuTmRQ?e=Pe5fn0" ><strong>Pobreza Menstrual no Sistema Carcerário Brasileiro</strong></a></p>
    </footer>
  </footer>
<?php

          
