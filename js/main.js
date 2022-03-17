var array_paises = [];
var array_ciudades = [];
var items = new Array();

$(document).ready(function () {
      $(".menu-icon").on("click", function () {
            $("nav ul").toggleClass("showing");
      });


      $.getJSON("trofologos.json", function (data) {
            var $controles = $("#directorio .controles");
            $paises = $controles.find('select.pais');
            
            var ip=0;
            var ic=0;
            $.each(data, function(index, item){


                  ip=jQuery.inArray(item.pais, items);
                  if (ip<0) {
                        ip=items.push({nombre:item.pais,ciudades:[]});
                        ip+ip-1;
                  };
                  //console.log(items);

                  ip=items.findIndex(i => i.nombre == item.pais);
                  //console.log(ip);


                  //ip=jQuery.inArray(item.pais, items);
                  //console.log(ip);

                  x=jQuery.inArray(item.ciudad, items[ip]["ciudades"]);
                  if (x<0) items[ip]["ciudades"]=[];
                  //console.log(items);
                  
                  ic=jQuery.inArray(item.ciudad, items[ip]["ciudades"]);
                  if (ic<0)   ip=items[ip]["ciudades"].push(item.ciudad);
                  //ip=jQuery.inArray(item.ciudad, items[ip]["ciudades"]);

                  //items[i]=item.pais;
//                  items.push({name:item.pais, index:ip})
                  //items[item.pais]=item.pais;
                  //if (!items[item.pais]["ciudades"])items[item.pais].push(item.ciudad);
                  //items[item.pais]["ciudades"].push(item.ciudad);
                  //if (!items[ip]){
                  //      items.push(ip);
                  //      items[ip]["nombre"]=item.pais;
                  //      ip++;
                 // }
                                         
                  //if (!items[item.pais][item.ciudad]) items[item.pais][item.ciudad] = []
                  //items[item.pais][item.ciudad].push(item);

            });
            console.log(items);

            items.forEach(function(value, key){
                  //console.log(value);
            });

            $.each(items, function(){
                  //var $option = $('<option/>', {
                  //      value: key,
                  //      text: value
                  //});
                  //$paises.append($option);
                  //console.log(this);
            });

            //console.log($paises);

//////hasta aqui todo bien

            var $controles = $("#directorio .controles");
            $paises = $controles.find('select.pais');
            $ciudades = $controles.find('select.ciudad');
            $paises.empty();
            $ciudades.empty();

            $.each(items, function (pais_index, pais_item) {
                  //console.log(items[pais_index])
                  //console.log(items[pais_index])
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
                  //console.log(pais_index);
                  if (!items[pais_index][ciudad_index][item_index])
                        items[pais_index][ciudad_index][item_index] = []
                  items[pais_index][ciudad_index][item_index]["nombre"]= item.nombre;




            });
            //console.log(array_ciudades);

      }).fail(function () {
            console.log("An error has occurred.");
      });

      $('#directorio .pais').change(function () {
            var pais = $("#directorio select.pais").val();
            var ciudad = $(this).val();
            console.log(pais);
            console.log(ciudad);

            var ciudades = $("#directorio select.ciudad");
            $ciudades.empty();
            $.each(items[item.pais][ciudad], function (index, item) {
                  var $option = $('<option/>', {
                        value: index,
                        text: item
                  });
                  $ciudades.append($option);
            });
      });

      function aplicarFiltro(p,c){

      }

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