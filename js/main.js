var array_paises = [];
var array_ciudades = [];
var items = [];

$(document).ready(function () {
      $(".menu-icon").on("click", function () {
            $("nav ul").toggleClass("showing");
      });


      $.getJSON("trofologos.json", function (data) {
            

            $.each(data, function(index, item){
                  if (!items[item.pais])
                        items[item.pais]=[];                 
                  if (!items[item.pais][item.ciudad])
                        items[item.pais][item.ciudad] = []
                  items[item.pais][item.ciudad].push(item);

            });

//////hasta aqui todo bien

            var $controles = $("#directorio .controles");


            $paises = $controles.find('select.pais');
            $ciudades = $controles.find('select.ciudad');
            $paises.empty();
            $ciudades.empty();

            $.each(items, function (pais_index, pais_item) {
                  console.log(items[pais_index])
                  console.log(items[pais_index])
                  var $option = $('<option/>', {
                        value: pais_index,
                        text: pais_item.nombre
                  });
                  $paises.append($option);
                  $.each(this.ciudades, function (ciudad_index, ciudad_item) {
                        if (!array_ciudades[pais_index])
                              array_ciudades[pais_index] = []
                        array_ciudades[pais_index][ciudad_index] = ciudad_item;
                  });
            });
            $.each(data[0].items, function (item_index, item) {
                  // console.log("Trofologo: "+k.nombre +" Ciudad: "+ k.ciudad)
                  console.log(pais_index);
                  if (!items[pais_index][ciudad_index][item_index])
                        items[pais_index][ciudad_index][item_index] = []
                  items[pais_index][ciudad_index][item_index]["nombre"]= item.nombre;




            });
            //console.log(array_ciudades);

      }).fail(function () {
            console.log("An error has occurred.");
      });

      $('#directorio .pais').change(function () {
            var value = $(this).val();
            var controles = $("#directorio .controles");
            $ciudades = controles.find('select.ciudad');
            $ciudades.empty();
            $.each(array_ciudades[value], function (index, item) {
                  var $option = $('<option/>', {
                        value: index,
                        text: item
                  });
                  $ciudades.append($option);
            });
      });

      $("#btnFiltroAplicar").click(function () {
            var $items = $("#directorio .items");
            $('#filtroModalCenter').modal('hide')

            $items.append(
                  `<!-- Team item -->
      <div class="item col-xl-3 col-sm-6 mb-5">
        <div class="foto bg-white ">
          <img src="img/directorio/${item.foto}" alt="" width="100%" class="img-fluid  ">
          <div class="insignia insignia-imagen-${item.insignia0}"></div>
          <div class="pestana"></div>
          <div class="texto text-center">MENCIÓN <br />Honorífica</div>
        </div>
        <h5 class="mb-0">${item.nombre}</h5>
        <h2>${item.grupo}</h2>
        <h3>${item.ciudad}, ${item.pais}</h3>
        <h3>Whatsapp: ${item.whatsapp}</h3>
        <ul class="social mb-0 list-inline mt-3">
          <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-whatsapp"></i></a></li>
          <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook"></i></a></li>
          <li class="list-inline-item"><a href="#" class="social-link"><i class="fa-brands fa-telegram"></i></a>
          </li>
          <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
        </ul>
      </div><!-- End -->
      `);
      });


});

// Scrolling Effect

$(window).on("scroll", function () {
      if ($(window).scrollTop()) {
            $('nav').addClass('black');
      } else {
            $('nav').removeClass('black');
      }
})