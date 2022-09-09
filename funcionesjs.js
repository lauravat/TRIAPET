var input = document.getElementsByClassName('formulario__input');/*estoy obteniendo todos los datos de una clase formulario input y lo estoy alamcenando en una variable inputs*/
for (var i=0; i < input.length; i++){/*se recorre la misma cantidad de elmentos que tenga la clase formulario inputs*/ 
    input[i].addEventListener('keyup',function(){/*va a escuchaar el evento keyup que es cuando suelto una tecla */
        if (this.value.length>=1){/*y evalua si el elemento en el input es mayor o igual a 1 selecciona al siguiente elemento que es label y aplica la clase fijar por lo tanto se mantiene arriba*/
            this.nextElementSibling.classList.add('fijar');
        }
        else{/*si el elemento del input es menor a 1 ae le quita la clase fijar por lo que el texto vuelve a posicionarse en su lugar original*/
            this.nextElementSibling.classList.remove('fijar');
        }
    })
}
var ent=document.getElementById('t1');
var ent2=document.getElementById ('t2');
function ingr (){
if (ent!="" && ent2!=""){
    alert('Inicio sesion correctamente');
}
}
function erin(){
    alert ('No se pudo iniciar sesión,vuelva aintentarlo');
}
function errr (){
    alert ('No se pudo registrar el usuario,intente de nuevo');
}
function ingrc (){
    alert ('se registro correctamente');
}

