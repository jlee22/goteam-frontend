// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('turbolinks:load', function(){
  // loadBarGraph()
  getUserStats(user_id, token)

});

var getUserStats = function(user_id, token) {
  var apiURL = "https://api-goteam.herokuapp.com/api/users/" + user_id + "/stats.json?token=" + token
  var request = $.ajax({
    url: apiURL,
    method: "GET"
  })

  var ratings = []

  request.done(function(response) {
    for (var key in response){
      var obj = {}
      var name = response[key][1]["category"] +" "+ response[key][1]["name"]
      var rating = response[key][0]["rating"]
      obj[name] = rating
      ratings.push(obj)
    }
  loadBarGraph(ratings)
  })

}

function loadBarGraph(ratings) {
  var names = []
  var configRatings = []
  for(var i = 0; i < ratings.length;i++){
    names.push(Object.keys(ratings[i])[0])
    for(var key in ratings[i]){
      configRatings.push(ratings[i][key])
    }
  }

  $(function() {
    Highcharts.chart('stats-container', {
      chart: {
        type: 'bar',
        height: 700,
        backgroundColor: '#0f4c5c'
      },
      title: {
        text: 'My Sport Ratings'
      },
      xAxis: {
        categories: names,
        title: {
          text: null
        }
      },
      yAxis: {
        min: 0,
        max: 100,
        title: {
          text: 'Rating',
          align: 'high'
        },
        labels: {
          overflow: 'justify'
        }
      },
      tooltip: {
        valueSuffix: ' rating'
      },
      plotOptions: {
        bar: {
          dataLabels: {
            enabled: true
          }
        }
      },
      legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'top',
        x: -40,
        y: 80,
        floating: true,
        borderWidth: 1,
        backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
        shadow: true
      },
      credits: {
        enabled: false
      },
      series: [{
        name: "Fall 2016",
        data: configRatings
      }]
    });
  });
};
