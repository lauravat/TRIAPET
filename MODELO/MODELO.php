<?php 
class Usuario {
function login (){
    try{
        include "CONEXION.php";/*incluye un archivo php en donde esta la conexion a la base de datos*/
        $sen=$con ->prepare ("call login (?,?)");/* en la variable sen utiliza la variable con en donde se prepara para llamar al procedimiento almacenado y la cantidad de datos que va a recibir*/
        $sen -> BindParam(1,$_POST ['t1']);/*se parametriza un dato teniendo en cuenta la posicion del dato y en donde se encuentra el dato en el post*/
        $sen -> BindParam(2,$_POST['t2']);
        $sen->execute();/* se ejecuta la variable sen*/
        return $sen -> fetchAll(PDO::FETCH_ASSOC);
    }
    catch (exception $e){
        return $e;
    }
}
function registrar(){
    try{
        include "CONEXION.php";
        $sen=$con -> prepare ("call registrar (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        $sen -> BindParam(1,$_POST ['nd']);
        $sen -> BindParam(2,$_POST ['td']);
        $sen -> BindParam(3,$_POST ['nombre']);
        $sen -> BindParam(4,$_POST ['contra']);
        $sen -> BindParam(5,$_POST ['usu']);
        $sen -> BindParam(6,$_POST ['dire']);
        $sen -> BindParam(7,$_POST ['tel']);
        $sen -> BindParam(8,$_POST ['ce']);
        $sen -> BindParam(9,$_POST ['fn']);
        $sen -> BindParam(10,$_POST ['rl']);
        $sen -> BindParam(11,$_POST ['nc']);
        $sen -> BindParam(12,$_POST ['fr']);
        $sen -> BindParam(13,$_POST ['g']);
        $sen -> BindParam(14,$_POST ['titulo']);
        $sen -> BindParam(15,$_POST ['ae']);
        $sen -> execute ();
        return 1;
    }
    catch (exception $e){
        return $e;
    }
}
}
?>