// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('turbolinks:load', function(){
  $(function () {
    Highcharts.chart('stats-container', {
        chart: {
            type: 'bar'
        },
        title: {
            text: 'My Sport Ratings'
        },
        xAxis: {
            categories: ['Tennis Singles', 'Tennis Doubles', 'Soccer 11 vs 11', 'Soccer 6 vs 6'],
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
            data: [64, 60, 80, 54]
        }]
    });
});
})
