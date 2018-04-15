function abrirEditable(){
	document.getElementById("editable").style.display = "block";
}

function cerrarEditable(){
	document.getElementById("editable").style.display = "none";
}

function abrirEncima(){
	document.getElementById("encima").style.display = "block";
}

function cerrarEncima(){
	document.getElementById("encima").style.display = "none";
	cerrarEditable();
}

function enviar(){
    $.post("administracion.jsp",{
       q: "empleado",
       instruccion:"listar"
    });
}