document.addEventListener("turbolinks:load", function() {

	var map = new GMaps({
		div: '#map',
		lat: 49.18286,
		lng: -0.370679
	});

	window.map = map;

	var dinners = JSON.parse(document.querySelector("#map").dataset.addresses);
	window.dinners = dinners; 

	var bounds = new google.maps.LatLngBounds();

	dinners.forEach(function(dinner) {
		if (dinner.latitude && dinner.longitude) {
		var marker = map.addMarker({
			lat: dinner.latitude, 
			lng: dinner.longitude,
			title: dinner.address,
			infoWindow: {
				content: `<p><a href='dinners/${dinner.id}'>${dinner.address}</a></p>`
			}
		});

		bounds.extend(marker.position);
	  }
	});
	
	map.fitBounds(bounds)
});