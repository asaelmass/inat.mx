controles = $("#directorio .controles");
categ = controles.find('select.categ');
paises = controles.find('select.pais');
ciudades = controles.find('select.ciudad');

$(document).ready(function () {
      $(".menu-icon").on("click", function () {
            $("nav ul").toggleClass("showing");
      });

      $.getJSON("contactos.php?comando=paises&categ=" + categ, function (data) {
            paises.empty();
            ciudades.empty();
            conf_def_pais_id = data.conf['def_pais_id'];
            $.each(data.Paises, function (index, item) {
                  selected_ = (item.pais_id === conf_def_pais_id);
                  var $option = $('<option/>', {
                        value: item.pais_id,
                        text: item.pais,
                        selected: selected_
                  });
                  paises.append($option);
            });

            var pais = $("#directorio select.pais").val();
            $.getJSON("contactos.php?comando=ciudades&pais=" + pais, function (data) {
                  ciudades.empty();
                  conf_def_ciudad_id = data.conf['def_ciudad_id'];
                  console.log("def_ciudad_id:" + conf_def_ciudad_id);
                  $.each(data.Ciudades, function (index, item) {
                        selected_ = (item.ciudad_id === conf_def_ciudad_id);
                        var $option = $('<option/>', {
                              value: item.ciudad_id,
                              text: item.ciudad,
                              selected: selected_
                        });
                        ciudades.append($option);
                  });
                  FiltroAplicar();
            }).fail(function () {
                  console.log("An error has occurred.");
            });

      }).fail(function () {
            console.log("An error has occurred.");
      });

      $('#directorio .pais').change(function () {
            var pais = $("#directorio select.pais").val();
            $.getJSON("contactos.php?comando=ciudades&pais=" + pais, function (data) {
                  ciudades.empty();
                  var $option = $('<option/>', {
                        value: "(todos)",
                        text: "(Todos)",
                        selected: selected_
                  });
                  ciudades.append($option);
                  conf_def_ciudad_id = data.conf['def_ciudad_id'];
                  console.log("def_ciudad_id:" + conf_def_ciudad_id);
                  $.each(data.Ciudades, function (index, item) {
                        selected_ = (item.ciudad_id === conf_def_ciudad_id);
                        var $option = $('<option/>', {
                              value: item.ciudad_id,
                              text: item.ciudad,
                              selected: selected_
                        });
                        ciudades.append($option);
                  });
            }).fail(function () {
                  console.log("An error has occurred.");
            });
      });

      $("#btnFiltroAplicar").click(function () {
            FiltroAplicar();
      });
});

function FiltroAplicar() {
      pais = $("#directorio select.pais").val();
      ciudad = $("#directorio select.ciudad").val();
      categ = $("#directorio select.categ").val();
      items = $("#directorio .items");

      $('#filtroModalCenter').modal('hide')

      items.empty();
      $.getJSON("contactos.php", {
                  comando: 'contactos',
                  categ: categ,
                  pais: pais,
                  ciudad: ciudad
            },
            function (data) {
                  $.each(data.Contactos, function (index, item) {
                        var item_ = `<!-- Team item -->
                        <div class="item col-xl-3 col-sm-6 mb-5">
                        <div class="foto bg-white ">
                        <img src="img/directorio/${item.foto}" alt="" width="100%" class="img-fluid  ">`;
                        if (item.insignia_id > 0)
                              item_ = item_ + `<div class="insignia hover-insignia" style="background-image:url(img/directorio/${item.insignia_imagen})"></div>
                              <div class="pestana hover-insignia2"></div>
                              <div class="texto hover-insignia text-center insignia-texto" >${item.insignia}</div>`;
                        item_ = item_ + `</div>
                        <h5 class="mb-0">${item.nombre}</h5>
                        <h3>${item.ciudad}, ${item.pais}</h3>
                        <h3>Whatsapp: ${item.whatsapp}</h3>
                        <ul class="social mb-0 list-inline mt-3">
                        <li class="list-inline-item"><a href="https://wa.me/${item.whatsapp}" class="social-link" target="_blank"><i class="fa fa-whatsapp"></i></a></li>
                        <li class="list-inline-item"><a href="${item.facebook}" class="social-link" target="_blank"><i class="fa fa-envelope-o fa fw"></i></a></li>
                        </ul>
                        </div><!-- End -->
                        `
                        items.append(item_);
                  });
            }).fail(function () {
            console.log("An error has occurred.");
      });
}
// Scrolling Effect
$(window).on("scroll", function () {
      if ($(window).scrollTop()) {
            $('nav').addClass('black');
      } else {
            $('nav').removeClass('black');
      }
})