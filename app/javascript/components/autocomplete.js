function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var farmLocation = document.getElementById('farm_location');

    if (farmLocation) {
      var autocomplete = new google.maps.places.Autocomplete(farmLocation, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(farmLocation, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
