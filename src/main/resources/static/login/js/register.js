// JQUERY
$(function() {
	
	var images = ['https://www.wallpaperup.com/uploads/wallpapers/2015/01/17/588455/5bf29c266336455dbfca5115f80933b5-1400.jpg', 'https://www.wallpaperup.com/uploads/wallpapers/2015/01/17/588455/5bf29c266336455dbfca5115f80933b5-1400.jpg'];

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