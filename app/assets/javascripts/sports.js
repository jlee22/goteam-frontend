// Target the sport linke
// Replace link with type link

$(document).on("turbolinks:load", function() {
  var sportFormTarget = $(".submit-sport-form");

  $(".submit-sport-form").on('ajax:success', function(event, response) {
    console.log(response)
    console.log("Success!")
    // sportFormTarget.hide()
  })

  sportFormTarget.on('ajax:error', function(event, response) {
    alert(response)
  })
})