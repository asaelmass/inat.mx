$(document).ready(function() {
    $(".menu-icon").on("click", function() {
          $("nav ul").toggleClass("showing");
    });


    $.getJSON("http://localhost/inat/inat.mx/trofologos.json", function(data){
          $.each(data[0].paises, function(v,k){
            console.log("Pais:"+k.nombre);
            $.each(this.ciudades, function(v,k){
                  console.log("ciudad:"+k);
                });
          });
          $.each(data[0].items, function(v,k){
                console.log("Trofologo: "+k.nombre +" Ciudad: "+ k.ciudad)

          });
          
      }).fail(function(){
            console.log("An error has occurred.");
      });


});

// Scrolling Effect

$(window).on("scroll", function() {
    if($(window).scrollTop()) {
          $('nav').addClass('black');
    }

    else {
          $('nav').removeClass('black');
    }
})