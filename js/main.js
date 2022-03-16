$(document).ready(function() {
      var array_ciudades = [];
    $(".menu-icon").on("click", function() {
          $("nav ul").toggleClass("showing");
    });


    $.getJSON("trofologos.json", function(data){
          var controles = $("#directorio .controles");
          $paises=controles.find('select.pais');
          $ciudades=controles.find('select.ciudad');
          $paises.empty();
          $ciudades.empty();
          $.each(data[0].paises, function(pais_index, pais_item){
                var $option = $('<option/>',{value:pais_index,text:pais_item.nombre});
                $paises.append($option);
            $.each(this.ciudades, function(ciudad_index, ciudad_item){
                  if(!array_ciudades[pais_index])
                  array_ciudades[pais_index] = []
                  array_ciudades[pais_index][ciudad_index]=ciudad_item;
            });
          });
          $.each(data[0].items, function(v,k){
               // console.log("Trofologo: "+k.nombre +" Ciudad: "+ k.ciudad)

          });
          console.log(array_ciudades);
          
      }).fail(function(){
            console.log("An error has occurred.");
      });

      $('#directorio .pais').change(function(){ 
            var value = $(this).val();
            var controles = $("#directorio .controles");
            $ciudades=controles.find('select.ciudad');
          $ciudades.empty();
          $.each(array_ciudades[value],function(index, item){
            var $option = $('<option/>',{value:index,text:item});
            $ciudades.append($option);
          });
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