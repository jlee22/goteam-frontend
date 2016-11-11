function initMap() {
    var san_francisco = {lat: 37.7845165, lng: -122.3971939};
    var map = new google.maps.Map(document.getElementById('index-map'), {
      zoom: 13,
      center: san_francisco
    });

    var locations = [
    {lat: 37.767221, lng: -122.442799},
    {lat: 37.725744, lng:  -122.483349},
    {lat: 37.786281, lng:  -122.438163},
    {lat: 37.779287, lng: -122.396036},
    {lat: 37.764863, lng:  -122.409679},
    {lat:   37.763321, lng:  -122.407946}
    ]
    var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var urls = "localhost:3000/users/1/matches/1/";

    var markers = locations.map(function(location, i) {
     return new google.maps.Marker({
      position: location,
      animation: google.maps.Animation.DROP,
      label: labels[i % labels.length],
      url: urls
    });
   });

    markers.forEach(function(marker){
      marker.addListener('dblclick', function() {
        map.setZoom(15);
        map.setCenter(marker.getPosition());

      });
      marker.addListener('click', function() {
        console.log(marker.url);
        window.location.href = '/users/1/matches/1/';
        window.location.replace("/users/1/matches/1/");

      });
    })// foreach loop close

    google.maps.event.addListener(markers,'click', function() {
      map.setZoom(15);
      map.setCenter(this.getPosition());

    });

      var markerCluster = new MarkerClusterer(map, markers,
        { imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'})
    }
