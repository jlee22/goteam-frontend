// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('turbolinks:load', function(){

  $(".register-form").on('submit', function(event, data, status, xhr){

    var $form        =  $(this);
    var $data        =  $form.serialize();
    var $first_name  =  $('#first_name').val();
    var $last_name   =  $('#last_name').val();
    var $email       =  $('#email').val();
    var $password    =  $('#password').val();
    var $street      =  $('#street').val();
    var $city        =  $('#city').val();
    var $state       =  $('#state').val();
    var $zip         =  $('#zip').val();
    var $phone       =  $('#phone').val();
    var $city        =  $('#city').val();

    var user = { "user": {
      first_name:   $first_name,
      last_name:    $last_name,
      email:        $email,
      password:     $password,
      street:       $street,
      city:         $city,
      state:        $state,
      zip:          $zip,
      phone:        $phone
        }
      }; // end of user object definition
    console.log(user);
    $.ajax({
      type: "POST",
      url: "https://api-goteam.herokuapp.com/api/users",
      data: user,
      headers: {
        "Content-type": "application/json",
        "dataType"    : "json"
      },
      dataType: "json",
      success: function(newUser){
        console.log(newUser); // This should return the new User Object
        },
      error: function(){
        alert("ERROR ERROR ERROR");
          }
        }); // end of ajax request

  }); // end of button click logic
}) // end of doc ready
