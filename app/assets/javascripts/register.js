// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('turbolinks:load', function(){

  $(".register-form").on('submit', function(event, data, status, xhr){
      var $form        =  $(this);
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

      var isValid =  $form.isValid();
      console.log($form);
      console.log($first_name);
      console.log($last_name);
      console.log($city);
      console.log($city);

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
