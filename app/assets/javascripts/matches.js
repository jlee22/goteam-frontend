// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('turbolinks:load', function(){
  slideHomeTeam()
  slideAwayTeam()
  fadeInScore()
  fadeInVs()
})

var slideHomeTeam = function() {
    var homeTeam = $("#home-team-container")
    homeTeam.animate( {
      left: '20%'
    })
  }

var slideAwayTeam = function() {
    var awayTeam = $("#away-team-container")
    awayTeam.animate( {
      right: '20%'
    })
  }

var fadeInScore = function() {
  $("#match-score-container").children("h4").fadeIn()
}

var fadeInVs = function() {
  $("#vs-container").fadeIn("slow")
}

