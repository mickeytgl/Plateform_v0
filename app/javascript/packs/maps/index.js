var map;

window.addMarkers = function addMarkers() {
  var element = document.querySelector("#dinners-list");
  var dinners = window.dinners = JSON.parse(element.dataset.addresses);

  map.removeMarkers();

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

  setSafeBounds(element);
}

function setSafeBounds(element) {
  var l = element.dataset.l;
  if (l) {
    var latlngs   = l.split(',');
    var southWest = new google.maps.LatLng(latlngs[0], latlngs[1]);
    var northEast = new google.maps.LatLng(latlngs[2], latlngs[3]);
    var bounds    = new google.maps.LatLngBounds(southWest, northEast);
    map.fitBounds(bounds, 0);

  } else {
    map.fitZoom();
  }
}

document.addEventListener("turbolinks:load", function() {
  map = window.map = new GMaps({
    div: '#map',
    lat: 38.5816,
    lng: -121.4944
  });

  addMarkers();

  map.addListener("dragend", function() {
    var bounds = map.getBounds();
    var location = bounds.getSouthWest().toUrlValue() + "," + bounds.getNorthEast().toUrlValue();

    Turbolinks.visit(`/dinners?l=${location}`);
  });
});