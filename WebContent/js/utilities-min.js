/**
**FrameWorkJQuery
**/
$(document).ready(function(){
$('#mainmenu li a').click(function(){$('#mainmenu li a').removeClass('active');$(this).addClass('active');});
$('#mainmenu li a').click(function(){var url=$(this).attr('href');$(".workspace-art").load(url);$(this).parent().parent().parent().children().addClass('active');return false;});
$('#policyprivacy').click(function(){var url=$(this).attr('href');$(".workspace-art").load(url);$(this).parent().parent().children().addClass('active');return false;});
$('#poweredby').click(function(){var url=$(this).attr('href');$(".workspace-art").load(url);$(this).parent().parent().children().addClass('active');return false;});
$('#termsandconditions').click(function(){var url=$(this).attr('href');$(".workspace-art").load(url);$(this).parent().parent().children().addClass('active');return false;});
});