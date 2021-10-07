// JQUERY
$(function() {
	
	var images = ['https://www.wallpaperup.com/uploads/wallpapers/2013/03/21/56794/0ea58b0fe8754009f2dee9690766cfdf-1000.jpg', 'https://www.wallpaperup.com/uploads/wallpapers/2013/03/21/56794/0ea58b0fe8754009f2dee9690766cfdf-1000.jpg'];

   $('#container').append('<style>#container, .acceptContainer:before, #logoContainer:before {background: url(' + images[Math.floor(Math.random() * images.length)] + ') center fixed }');
	
	
	setTimeout(function() {
		$('.logoContainer').transition({scale: 1}, 700, 'ease');
		setTimeout(function() {
			$('.logoContainer .logo').addClass('loadIn');
			setTimeout(function() {
				$('.logoContainer .text').addClass('loadIn');
				setTimeout(function() {
					$('.acceptContainer').transition({height: '431.5px'});
					setTimeout(function() {
						$('.acceptContainer').addClass('loadIn');
						setTimeout(function() {
							$('.formDiv, form h1').addClass('loadIn');
						}, 500)
					}, 500)
				}, 500)
			}, 500)
		}, 1000)
	}, 10)
	

	
});