<script>
	$(document).ready( function(){
	    $('.slider')._TMS({
		preset:'diagonalExpand',
		easing:'easeOutQuad',
		duration:1000,
		pagination:true,
		slideshow:2000
		});
	});
</script>

<style type="text/css">
.slider-bg{width:1000px;height:500px;background:url('css/css-img/slider-background.png') 0 0 no-repeat;position:relative;}
.slider{width:984px;height:484px;position:absolute;z-index:1;float:left;top:8px;left:8px;}
.slider .items{display:none}
.slider .pagination{position:absolute;z-index:2;bottom:25px;left:400px;}
.slider .pagination{bottom:25px;}
.slider .pagination li{float:left;list-style-type:none;}
.slider .pagination a{display:block;width:30px;height:30px;text-indent:-9999px;background:url('css/css-img/slider-buttons.png') right 0 no-repeat;}
.slider .pagination a:hover, .slider .pagination .current a{background-position:left;}
</style>
<div class="slider-bg">
	<div class="slider">
		<ul class="items">
			<li>
				<img src="img/img01.jpg" alt="1234">
			</li>
			<li>
				<img src="img/img02.jpg" alt="">
			</li>
			<li>
				<img src="img/img03.jpg" alt="">
			</li>
		</ul>
	</div>
</div>
