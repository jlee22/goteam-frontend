// Target the sport linke
// Replace link with type link

// $(document).on("turbolinks:load", function() {
//   var sportFormTarget = $(".submit-sport-form");

//   sportFormTarget.on('ajax:success', function(event, response) {
//     console.log("Success!")
//     console.log(response)
//     // sportFormTarget.hide()
//   })

//   sportFormTarget.on('ajax:error', function(event, response) {
//     alert(response)
//   })
// })

$(document).on("turbolinks:load", function() {
    $(".submit-sport-form").on("submit", function() {
      event.preventDefault();

      var submitSportTarget = $(this);
      var address = submitSportTarget.attr("action");
      var method = submitSportTarget.attr("method");
      var data = submitSportTarget.serialize();

      var request = $.ajax({
        url: address,
        method: method,
        data: data
      })
      request.done(function(response) {
        // For the sport, append all the game types
        for(var i=0; i < response.length; i++) {
          var sportLink = "/sports/" + response[i].id
          var sportId = response[i].name
          submitSportTarget.hide();
          submitSportTarget.parent().append('<a href="' + sportLink + '">'+sportId+'</a>');
        }


      })
    })


  })
