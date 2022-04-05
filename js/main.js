controles = $("#directorio .controles");
paises = controles.find('select.pais');
ciudades = controles.find('select.ciudad');

$(document).ready(function () {
      $(".menu-icon").on("click", function () {
            $("nav ul").toggleClass("showing");
      });

      $.getJSON("contactos.php?comando=paises", function (data) {
            paises.empty();
            ciudades.empty();
            $.each(data.Paises, function(index, item){
                  var $option = $('<option/>', {
                        value: item.pais_id,
                        text: item.pais
                  });
                  paises.append($option);
            });
      }).fail(function () {
            console.log("An error has occurred.");
      });

      $('#directorio .pais').change(function () {
            var pais = $("#directorio select.pais").val();
            $.getJSON("contactos.php?comando=ciudades&pais="+pais, function (data) {
                  ciudades.empty();    
                  $.each(data.Ciudades, function(index, item){
                        var $option = $('<option/>', {
                              value: item.ciudad_id,
                              text: item.ciudad
                        });
                        ciudades.append($option);
                  });
            }).fail(function () {
                  console.log("An error has occurred.");
            });
      });

      $("#btnFiltroAplicar").click(function () {
            pais = $("#directorio select.pais").val();
            ciudad = $("#directorio select.ciudad").val();
            items = $("#directorio .items");

            $('#filtroModalCenter').modal('hide')
            
            items.empty();
            $.getJSON("contactos.php",
                  {
                        comando:'contactos',
                        pais:pais,
                        ciudad:ciudad
                  },
                  function (data) {
                  $.each(data.Contactos, function(index, item){
                        items.append(
                              `<!-- Team item -->
                              <div class="item col-xl-3 col-sm-6 mb-5">
                              <div class="foto bg-white ">
                              <img src="img/directorio/cynthia.jpg" alt="" width="100%" class="img-fluid  ">
                              <div class="insignia insignia-imagen-{item.insignia0}"></div>
                              <div class="pestana"></div>
                              <div class="texto text-center">MENCIÓN <br />Honorífica</div>
                              </div>
                              <h5 class="mb-0">${item.nombre}</h5>
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
            }).fail(function () {
                  console.log("An error has occurred.");
            });
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