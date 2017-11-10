$(document).ready(function() {
	$('#btnConsultar').click(function() {
		consultarRequisitos();
	});	
});

function consultarRequisitos() {
	var comboTramite = document.getElementById("comboTramite");
	if(comboTramite.value="01"){
	document.getElementById('lista_oculto').style.display = 'block';
	}
}