<div id="bodyWrapper">

	<h2 class="aboutUsHeadings" > Locations </h2>
      
      <form action="<?= BASE_URL ?>/locations/" method="POST">
            <div class="zipcodecontainer">
                  <input type='text' name='address' placeholder='Enter any address here' />
                  <input type='submit' value='Geocode!' />
            </div>
      </form>

      <?php
            if($_POST) {
 
            // get latitude, longitude and formatted address
            $data_arr = $this->geocode($_POST['address']);
         
            // if able to geocode the address
            if($data_arr){
                 
                $latitude = $data_arr[0];
                $longitude = $data_arr[1];
                $formatted_address = $data_arr[2]; 
      ?>

       <!-- google map will be shown here -->
      <div id="map">Loading map...</div>
      <div id='map-label'>Map shows approximate location.</div>

      <!-- JavaScript to show google map -->
      <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAWgxNoCo1FVZSm6azr-hXBV9Okvmzz3uI"></script>    
      <script type="text/javascript">

            function init_map() {
                  var myOptions = {
                        zoom: 14,
                        center: new google.maps.LatLng(<?php echo $latitude; ?>, <?php echo $longitude; ?>),
                        mapTypeId: google.maps.MapTypeId.ROADMAP
                  };
                  map = new google.maps.Map(document.getElementById("map"), myOptions);
                  marker = new google.maps.Marker({
                        map: map,
                        position: new google.maps.LatLng(<?php echo $latitude; ?>, <?php echo $longitude; ?>)
                  });
                  infowindow = new google.maps.InfoWindow({
                        content: "<?php echo $formatted_address; ?>"
                  });
                  google.maps.event.addListener(marker, "click", function () {
                        infowindow.open(map, marker);
                  });
                  infowindow.open(map, marker);
            }
            google.maps.event.addDomListener(window, 'load', init_map);

      </script>

      <?php
           
                  // if unable to geocode the address
                  }
                  else
                  {
                        echo "No map found.";
                  }
            }
      ?>

</div>