<?php 
// conexao com o banco 
include_once 'conexao.php';
?>

<?php 
    $sql = "SELECT * FROM artigo WHERE idtitulo LIKE $idtitulo";
    // executa o comando SQL no banco e retornar os dados
    $result = mysqli_query( $index, $sql );
    // laco de repeticao 
    while($row = mysqli_fetch_array($result)){       
    ?>
    <div class="block">
    <h2><a href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['titulo'];?></a></h2>
    <p href="artigo.php?id=<?php echo $row['artigoid'];?>"><?php echo $row['subtitulo'];?></p>
    </div>
<?php
          }
