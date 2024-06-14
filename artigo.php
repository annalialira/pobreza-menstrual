<?php 
include_once 'conexao.php';



$artigoid = $_GET['id'];
?>
 <link rel="stylesheet" href="style.css?t=<?php echo date('YmdHis').rand(1,999999)?>">

<?php 
    $sql = "SELECT * FROM artigo WHERE artigoid = $artigoid";
    $result = mysqli_query( $conexao, $sql );
    $row = mysqli_fetch_array($result);    
    ?>
    <div class="outrapagina">
    <h2><a class="linkcor" href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['titulo'];?></a></h2>
    <p class="textoartigo "href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['subtitulo'];?></p>
    <p href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['texto'];?></p>
    <img src="img/<?php echo $row['imgprincipal'];?>" alt="" srcset="">
    <p href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['autor'];?></p>
    </div>
    <footer id="sticky-footer">
    <div class="container text-center">
      <small>Giovanna Pandolfo &copy; Anna Lia</small>
    </div>
  </footer>
<?php

          
