// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('turbolinks:load', function(){
  slideHomeTeam()
  slideAwayTeam()

  var awayTeam = $("#away-team-container")
  awayTeam.animate( {
    right: "20%";
  })
})

var slideHomeTeam
var homeTeam = $("#home-team-container")
  homeTeam.animate( {
    left: '20%';
  })
