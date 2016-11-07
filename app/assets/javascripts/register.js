// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('turbolinks:load', function(){

      var $first_name  =  $('#_first_name');
      var $last_name   =  $('#_last_name');
      var $email       =  $('#_email');
      var $password    =  $('#_password');
      var $street      =  $('#_street');
      var $city        =  $('#_city');
      var $state       =  $('#_state');
      var $zip         =  $('#_zip');
      var $phone       =  $('#_phone');

  $(".register-form").on('submit', function(event, data, status, xhr){
      console.log("success");
    //   var user = {
    //     first_name:   $first_name.val();
    //     last_name:    $last_name.val();
    //     email:        $email.val();
    //     password:     $password.val();
    //     street:       $street.val();
    //     city:         $city.val();
    //     state:        $state.val();
    //     zip:          $zip.val();
    //     phone:        $phone.val();

    // }; // end of user object definition

    // $.ajax({
    //   type: "POST",
    //   url: "https://api-goteam.herokuapp.com/api/users",
    //   data: user,
    // }).success(function(newUser){
    //   console.log(newUser); // This should return the new User Object
    // }).error(function(errors){  alert("ERROR ERROR ERROR")  console.log('errors')}); // end of ajax request

  }); // end of button click logic
}) // end of doc ready
