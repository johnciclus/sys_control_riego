<style type="text/css">
#div-salir{
	background-color: #fff;
	width:500px;
	height:auto;
	padding:10px;
}
#form {
	border: 1px solid #1c160d;
	font-size: 20px;
	font-variant: small-caps;
	font-weight: bold;
}
#div-salir,#form fieldset,#form input{
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	behavior: url('ie-style-min.htc');
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
#form input{
	border: 1.5px solid #92d30f;
	text-align: center;
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
</style>

<%
	session.invalidate();	
%>		<div id="div-salir">
			<fieldset id="form">
				<legend>Cerrando Sesi&oacute;n</legend>
				<ol align="center">
					<li>
						Ha salido correctamente.
					</li>				
				</ol>
			</fieldset>
		</div>
		
<script type="text/javascript" language="javascript"> 
	require(["bpopup"], function(){
		$(document).ready(function() {
			$('div#div-salir').bPopup({
	            modalClose: false
	          });
			setTimeout(function(){
				$('#div-salir').remove();
				$('.b-modal').remove();
				location.reload();
				},1500);
		});
	});	
	
</script>                 