<?php 
include "../MODELO/MODELO.php";
/*var_dump ($_POST);*/
$obj=new usuario ($_POST);
$r=$obj -> login();
/*var_dump($r);*/
if(empty($r)){
    include "../VISTAS/inicios.html";
    echo "<script> erin() </script>";
    /*window.location = 'inicios.html'*/
}
else{
include "../VISTAS/inicios.html";
echo "<script> ingr() </script>";}
?>
