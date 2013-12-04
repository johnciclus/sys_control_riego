<%--// Algunos cambios jsp/humedad-registro.jsp //--%>

<style type="text/css">
#tab-accusu{
    margin:0 auto;
	background-color: #fff;
	width:600px;
	height:auto;
	padding:10px;
}

#form {
	border: 1px solid #1c160d;
	margin: auto;
	font-size: 20px;
	font-variant: small-caps;
	font-weight: bold;
}

#tab-accusu,#form fieldset,#form input,#form select,#lrecordar {
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	behavior:url('ie-style-min.htc');
}

#form legend {
	color: #1c160d;
	font-size: 20px;
}

#form ol {
	list-style: none;
}

#form ol li {
	padding-bottom: 5px;
}

#form ol li label {
	width: 300px;
	display: inline-block;
}

#form input,#form select {
	border: 1.5px solid #92d30f;
	text-align: center;
}

#form select {
	width: 150px;
}

#form input.btn {
	height: 30px;
	padding: 3px;
	background: #d9f691;
	font-weight: bold;
}

#form input.btn:hover {
	background: #62a80a;
	color: #fff;
}
#formcontent {
	width: 960px;
	margin: 0 auto;
}
#lrecordar:hover {
	cursor:pointer;
	color:#fff;
	background:#62a80a;
	border: 1.5px solid #92d30f;
}
#lrecordar{
	font-size:14px;
	padding:2px;
	width:150px !important;
	height:20px !important;
	border:1.5px solid #62a80a;
	/*
	border:1.5px solid #92d30f;
	*/
}
</style>

<div id="tab-accusu" class="validationEngineContainer">
	<fieldset id="form">
		<legend>Acceso Usuario</legend>
			<ol align="center" id="ingresar">
				<li>
					<label for="nusuario">Usuario</label>
				 	<input type="text" name="nusuario" id="usuario" class="validate[required,custom[onlyLetterNumber]]" />
				 </li>
				<li>
					<label for="nclave">Contrase&ntilde;a</label>
					<input type="password" name="nclave" id="clave" class="validate[required,custom[onlyLetterNumberSp]]"/>
				</li>
				<li><br /></li>
				<li>
					<input type="button" class="btn" name="bnaccusu" id="baccusu" value="Acceder" />
					<input type="button" class="btn" name="bncancelar" id="bcancelar" value="Cancelar" />
				</li>
				<li><br /></li>
			</ol>
			<ol align="center">
				<li>
					<label id="lrecordar" for="usurecordar">Recordar Contrase&ntilde;a</label>
				</li>
				<li><br /></li>
				<li id="recordar" class="validationEngineContainer">
					<label for="usurecordar">Ingrese N&uacute;mero de Documento</label>
					<input type="text" name="nusurecordar" id="usurecordar" class="txt validate[required,custom[integer],min[1]]" />
					<br /><br />
					<input type="button" class="btn" name="bnrecusu" id="brecusu" value="Enviar" />		
					<input type="button" class="btn" name="bnrcancelar" id="brcancelar" value="Cancelar" />		
				</li>
			</ol>
		</fieldset>
	<div id="div-accusu">
	</div>
</div>

<script type="text/javascript" language="javascript">
	require(["validationengine-es","bpopup"], function(){
		jQuery(document).ready(function(){
			$("#usuario").focus();
			jQuery("#tab-accusu").validationEngine();
			$("#recordar").hide();
		});
	});

	$("#baccusu").click(function(){
		if(jQuery("#tab-accusu").validationEngine('validate')){
			vusuario=document.getElementById("usuario").value;
			vclave=document.getElementById("clave").value;
			$.ajax({
				url : "jsp/usuario-validar.jsp",
				data : "usuario="+vusuario+"&clave="+vclave,
				success : function(data) {
					$('div#div-accusu').html(data);
					$('div#div-accusu').bPopup({
					});			
										
					if($('#sesion').val()==1)
						{						
						cerrar(1500);
						}
					else
						{
						setTimeout(function(){
							$('#div-accusu').bPopup().close();
							$("#usuario").val("");
							$("#clave").val("");
							$("#usuario").focus();
							},1500);						
						}	
				}
			});
		}
	});
	$("#bcancelar").click(function() {
		  cerrar(500);
		});	
	$("#brcancelar").click(function() {
		$("#usuario").val("");
		$("#clave").val("");
		$("#recordar").hide();
		$("#ingresar").show();
		$("#usuario").focus();
		});	
	$("#lrecordar").click(function() {
		$("#usuario").val("usuario");
		$("#clave").val("contraseña");
		$("#recordar").show();
		$("#ingresar").hide();
		$("#usurecordar").focus();	
		
		});
	$("#brecusu").click(function() {
		if(jQuery("#tab-accusu").validationEngine('validate')){
			vnumdoc=document.getElementById("usurecordar").value;
			alert(vnumdoc+' enviando...');
			$.ajax({
				url : "jsp/usuario-administrar.jsp",
				data : "opcion=recusu&numdoc="+vnumdoc,
				success : function(data) {
					$('#div-accusu').html(data);
					$('#div-accusu').bPopup({
						modalClose: false
					});				
				}
			});
		}		
		});
	
	function cerrar(time){
		setTimeout(function(){
			$('#div-accusu').remove();
			$('#tab-accusu').remove();
			$('.div-popup').remove();
			$('.b-modal').remove();
			location.reload();
			},time);
	}
</script>