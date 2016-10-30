<div id="bodyWrapper">
	<h2 class="aboutUsHeadings" > Locations </h2>
    <form action="<?= BASE_URL ?>/locations/find/" method="POST">
      <div class="zipcodecontainer">
        <p class="zipcodefield">Zip Code *: </p>
        <input class="locationinput" type="text" name="Zip Code" placeholder="Zip Code"/>
        <button class="submitbutton">Find</button>
      </div>
    </form>
    <div id="map"></div>

    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          // center: {lat: -34.397, lng: 150.644},
          center: {lat: 37.09024, lng: -95.712891},
          zoom: 3,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAWgxNoCo1FVZSm6azr-hXBV9Okvmzz3uI&callback=initMap&libraries=places"
    async defer></script>


</div>