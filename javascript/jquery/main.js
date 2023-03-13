/*que termine de cargar el documento
$(function()
{
    
})

*/
//$(document).ready(function(){
  //  $(".primero").css({"background-color": "red"});

  /*
    eventos
    fadeOut- desaparece lentamente
    fadeIn- se desaparece de forma animada
    mouseleave- al mover el raton por encima desaparece
    mouseenter
    slidedown-se esconde hacia abajo
    slideup- se enconde hacia arriba
  */ 
  /*  $(".primero").mouseenter(function(){
        $("#segundo").hide();
    });

    $(".primero").mouseleave(function(){
        $("#segundo").show();
    });

}

+++++prepend-añade arriba del texto sin eliminarlo con.prepend
append-añade abajo del texto sin eliminarlo con.append
con html- borra en contenido.
after se anade otro parrafo abajo
before se anade otro parrafo arriba
remove elimina el contenido
empty  vaciar el contenido
*/

$("document").ready(function(){
    $("#btn1").click(function(){
       // alert($("#segundo").text());
      // $("#segundo").html("<strong>hola programadores</strong");
       //$("#segundo").append("hola programadores");
       //$("#segundo").prepend("hola programadores");
     //  $("#segundo").after("<strong><p>hola programadores</p></strong>");
   //  $("#segundo").before("<strong><p>hola programadores</p></strong>");
//  $(".btn2").empty();
      //  $("h1").addClass("blue");//añade color extraida de la clase blue
        $("h1").toggleClass("blue");//pone y quita clase creada blue de css


    })

});

/*
$(function(){
    $(".btn2").click(function(){

        $("h1").removeClass("blue");//elimina color extraida de la clase blue

    })
   
});
*/

$(function(){
  $(".btn2").click(function(){
    $(".primero").css({"background-color": "red"});
    
  })
});