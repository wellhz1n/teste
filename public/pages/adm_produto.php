<?php

$buscaP = mysqli_query($cx,"SELECT * FROM produto");
if (isset($_SESSION["login"])&& $_SESSION["nivel"] == 0) { ?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="assets/js/bootstrap/jquery-3.3.1.js"></script>

 <section class="col-12">
   <div class="row">
    <div class=" w-100" id="resultado">
    <table class="table col-12 w-100 text-center table-active table-bordered table-hover ">
        <thead class="thead-dark">
          <tr>
          <th scope="col">Imagem</th>
            <th scope="col">Nome</th>
            <th scope="col">descrição</th>
            <th scope="col">Preço</th>
            <th scope="col"><a  href="?page=produto" class='btn btn-primary' ><i class="fa fa-plus"></i>Novo</a></th>






          </tr>
          </thead>
          <tbody>
            <?php   while ($pesq = mysqli_fetch_array($buscaP)):?>
          <tr  <?php if($pesq['id']!=17){?> style="" class="text-center" >
            <!-- NO FUTURO IMPLEMENTAR ISSO ondblclick=" document.getElementById('form').submit();" -->

            <form  id="form" name="del" method="POST">
                  <input type="text" id="ID" value="<?php echo $pesq["id"]; $linha = $pesq['id']; ?> " name="ID" hidden>
                  <input type="text" id="ID" value="<?php echo $pesq["nome"];  ?> " name="nome" hidden>
                  <input type="text" id="ID" value="<?php echo $pesq["descricao"];  ?> " name="emadescricao" hidden>
                  <input type="text" id="ID" value="<?php echo $pesq["valor"];  ?> " name="valor" hidden>



            <td> <img class="rounded-circle w-25 h-25 " src="assets/img/produto/<?php echo  $pesq["img"]; ?>"></td>
            <td class="mt-3 " style="display:table-cell; vertical-align: middle;"><?php echo  $pesq["nome"]  ?></td>
            <td style="display:table-cell; vertical-align: middle;"><?php echo  $pesq["descricao"]  ?></td>
            <td style="display:table-cell; vertical-align: middle;"><h5 class="text-danger">R$:<?php   echo  $pesq["valor"] ?></h5></td>



            <td style="display:table-cell; vertical-align: middle;" scope="col "><button type="submit"  formaction="pages/forms/adm_form_produto_edit.php" class="my-1 btn btn-info"  <?php if($pesq['id'] == 17){ echo 'hidden'; } ?> ><i class="fa fa-edit"></i>Editar</button>
             <button type="button" id="deleteP" onclick="ProdutoDel(<?php echo $linha; ?>);"  class=" my-1 deleteP  btn btn-danger" <?php if($pesq['id'] == 17){ echo 'hidden'; } ?> ><i class="fa fa-trash"></i>Deletar</button></td>


        </tr >
            <?php } else{} ?>
        </form>
<?php endwhile; ?>

        </tbody>
      </table>
  </div>
</div>

</section>



<?php }elseif (isset($_SESSION["login"])&& $_SESSION["nivel"] == 1) {

    header("Location: http://localhost:8081/Tcc/public/?page=home");
    die();
?>
<?php } else{
    header("Location: http://localhost:8081/Tcc/public/?page=home");
    die();

} ?>
