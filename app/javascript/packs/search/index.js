document.addEventListener("turbolinks:load", function() {
  input = document.getElementById('autocomplete');
  options = { types: ['(cities)'] };
  autocomplete = new google.maps.places.Autocomplete(input, options);
})