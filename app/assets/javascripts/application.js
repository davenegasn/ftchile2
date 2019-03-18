// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require_tree .

$('document').ready(function(){

	$('#pop-client').on('click', function(){

		var cliente_id = $('#post_cliente_id').val();
		/*alert(client_id);*/
		get_ajax("/clientes/get_ajax_cliente", cliente_id, "#clientes");
		
	});

	$('#pop-supplier').on('click', function(){

		var proveedor_id = $('#post_supplier_id').val();
		/*alert(client_id);*/
		get_ajax("/suppliers/get_ajax_supplier", proveedor_id, "#proveedor");
		
	});

	



	function get_ajax(path, id, prefix ){
		$.ajax({
			type: "GET",
			url: path,
			dataType:'json',
  			data: {id: id},
			success: function(response){

				console.log(response);

				var apellidos = response.apellido_paterno + ' ' + response.apellido_materno;

				$(prefix + '_nombre').val(response.nombre);
				$(prefix + '_apellidos').val(apellidos);
				$(prefix + '_direccion').val(response.direccion);

				/*alert(response.comuna_id);*/

				$.ajax({
					type: "GET",
					url: "/comunas/" + response.comuna_id,
					dataType:'json',
					success: function(response_comuna){
						$(prefix + '_comuna').val(response_comuna.nombre);
					},
					error: function(error_comuna){
						console.log(error_comuna);
					}
				});
				
			},
			error: function(error){
				console.log(error);
				
			}
		});
	}
});