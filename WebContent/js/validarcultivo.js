// JavaScript Document

function validarregistrocultivo(){
	
	if (document.Frdatoscultivo.nomcult.value.length==0){
		alert("Debe ingresar Un Nombre Para El Cultivo")
		Frdatoscultivo.nomcult.focus()
		return 0;
		}
	 if (Frdatoscultivo.denspoblacion.value ==""){
			alert("Debe ingresar La Densidad De Poblacion ");// cuqndo no an intrdocido nada
			Frdatoscultivo.denspoblacion.focus();
			return false;
		}
		
		if (es_numero(Frdatoscultivo.denspoblacion.value)==false){
			alert("Debe ingresar un valor válido Para La Densidad de poblacion.");// cuando introducin letras y numeros
			Frdatoscultivo.denspoblacion.focus();
			return false;
		}
		
		
		 if (Frdatoscultivo.areacult.value ==""){
				alert("Debe ingresar El Area del Cultivo En Metros Cuadrado ");// cuqndo no an intrdocido nada
				Frdatoscultivo.areacult.focus();
				return false;
			}
			
			if (es_numero(Frdatoscultivo.areacult.value)==false){
				alert("Debe ingresar un valor válido Para El Area del Cultivo");// cuando introducin letras y numeros
				Frdatoscultivo.areacult.focus();
				return false;
			}
			 
			if (document.Frdatoscultivo.idtiposiembra.selectedIndex==0){
				 alert("Debe seleccionar un Tipo de Siembre");
				 Frdatoscultivo.idtiposiembra.focus()
				 return 0;
				 
				 }
			
			if (document.Frdatoscultivo.fechacult.value.length==0){
				alert("Debe ingresar La Fecha De inicio del Cultivo")
				Frdatoscultivo.fechacult.focus()
				return 0;
				}
			
			
			alert("Los datos fueron ingresados correctamente y seran enviados");
			 document.Frdatoscultivo.submit();
	
}

function validarActualizacioncultivo(){
	
	if (document.frmDatosCultivo.nomcult.value.length==0){
		alert("Debe ingresar Un Nombre Para El Cultivo");
		frmDatosCultivo.nomcult.focus();
		return 0;
		}
	 if (frmDatosCultivo.denspoblacion.value ==""){
			alert("Debe ingresar La Densidad De Poblacion ");// cuqndo no an intrdocido nada
			frmDatosCultivo.denspoblacion.focus();
			return false;
		}
		
		if (es_numero(frmDatosCultivo.denspoblacion.value)==false){
			alert("Debe ingresar un valor válido Para La Densidad de poblacion.");// cuando introducin letras y numeros
			frmDatosCultivo.denspoblacion.focus();
			return false;
		}
		
		
		 if (frmDatosCultivo.areacult.value ==""){
				alert("Debe ingresar El Area del Cultivo En Metros Cuadrado ");// cuqndo no an intrdocido nada
				frmDatosCultivo.areacult.focus();
				return false;
			}
			
			if (es_numero(frmDatosCultivo.areacult.value)==false){
				alert("Debe ingresar un valor válido Para El Area del Cultivo");// cuando introducin letras y numeros
				frmDatosCultivo.areacult.focus();
				return false;
			}
			 
			if (document.frmDatosCultivo.idtiposiembra.selectedIndex==0){
				 alert("Debe seleccionar un Tipo de Siembre");
				 frmDatosCultivo.idtiposiembra.focus();
				 return 0;
				 
				 }

		
			 document.frmDatosCultivo.submit();
	
}
function irModificarCultivo(codigocultivo){
	formulariomodificarcul.action = "jsp/cultivo-modificar.jsp?codigocultivo="+codigocultivo;
	formulariomodificarcul.submit();
}

function irEliminar(codigocultivo){
	formulariomodificarcul.action = "jsp/cultivo-eliminar.jsp?codigocultivo="+codigocultivo;
	formulariomodificarcul.submit();
}

function irActualizarCultivo(codigocultivo){
	frmDatosCultivo.action = "ActualizarCultivo.jsp?codigocultivo="+codigocultivo;
	
}

function irModificarFertilizante(idfertil){
	
	ListFertilizantes.action = "FertilizanteaModificar.jsp?idfertil="+idfertil;
	ListFertilizantes.submit();
}

function irEliminarFertilizante(idfertil){
	ListFertilizantes.action = "EliminarFertilizante.jsp?idfertil="+idfertil;
	ListFertilizantes.submit();
}

function irActualilzarFertilizante(idfertil){
	
	modificarferitil.action = "ActualizarFertilizante.jsp?idfertil="+idfertil;
	
}




function irModificarZigbee(maczigbee){
	modificacionzigbee.action ="ModuloZigbeeAModificar.jsp?maczigbee="+maczigbee;
	modificacionzigbee.submit();
}

function irEliminarZigbee(maczigbee){
	modificacionzigbee.action = "EliminarModuloZigbee.jsp?maczigbee="+maczigbee;
	modificacionzigbee.submit();
	
}

function irActualizarZigbee(maczigbee){
	frmModificarmoduloZB.action = "ActualizarModuloZigbee.jsp?maczigbee="+maczigbee;
	frmModificarmoduloZB.submit();
	
}
