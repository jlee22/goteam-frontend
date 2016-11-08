function initMap() {
  var san_francisco = {lat: 37.7845165, lng: -122.3971939};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 4,
    center: san_francisco
  });
  var marker = new google.maps.Marker({
    position: san_francisco,
    map: map
  });
}
