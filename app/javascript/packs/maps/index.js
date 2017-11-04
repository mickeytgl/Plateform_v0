document.addEventListener("turbolinks:load", function() {

	var map = new GMaps({
		div: '#map',
		lat: 49.18286,
		lng: -0.370679
	});

	window.map = map;

	var dinners = JSON.parse(document.querySelector("#map").dataset.addresses);
	window.dinners = dinners; 

	dinners.forEach(function(dinner) {
		if (dinner.latitude && dinner.longitude) {
		var marker = map.addMarker({
			lat: dinner.latitude, 
			lng: dinner.longitude,
			title: dinner.address,
			infoWindow: {
				content: `<p><a href='/dinners/${dinner.id}'>${dinner.address}</a></p>`
			}
		});
	  }
	});
	
  var l = document.querySelector("#map").dataset.l;
  if (l) {
  	var latlngs = l.split(',');
  	var southWest = new google.maps.LatLng(latlngs[0], latlngs[1]);
  	var northEast = new google.maps.LatLng(latlngs[2], latlngs[3]);
  	var bounds    = new google.maps.LatLngBounds(southWest, northEast);
  	map.fitBounds(bounds, 0);
  } else {
  map.fitZoom();
  }

  document.querySelector("#redo-search").addEventListener("click", function(e){
    e.preventDefault();
      
      var bounds = map.getBounds();
      var location = bounds.getSouthWest().toUrlValue() + "," + bounds.getNorthEast().toUrlValue();

      Turbolinks.visit(`/dinners?l=${location}`);
  });
});