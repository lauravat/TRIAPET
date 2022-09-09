<?php
include "../MODELO/MODELO.php";
/*var_dump ($_POST);*/
if (isset($_POST['tituloa']) or isset ($_POST['titulod'])){
    if (!empty($_POST['tituloa'])){
        $_POST['titulo']=$_POST['tituloa'];
}
    if (!empty($_POST['titulod'])){
    $_POST['titulo']=$_POST['titulod'];
}
}
$_POST['fr']=date("Y-m-d");
$obj=new usuario ($_POST);
$r=$obj -> registrar();
if(empty($r)){
    include "../VISTAS/registro.html";
    echo "<script> errr() </script>";
}
else{
    header ("location:../VISTAS/inicios.html");
}

?>