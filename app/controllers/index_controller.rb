class IndexController < ApplicationController

  def index
    @session = '' #Session.new
    @sports = SportsHelper.list

    @matches

    @sports_matches = ''
    @tennis_singles = {:lat => 37.767221, :lng => -122.442799}


    @tennis_doubles = [
                {lat: '37.767221', lng: '-122.442799'},
                {lat: '37.725744', lng:  '-122.483349'},
                {lat:  ' 37.786281', lng:  '-122.438163'}
              ]
    @soccer = [
                {lat: '37.779287', lng: '-122.396036'},
                {lat: '37.764863', lng:  '-122.409679'},
                {lat:  ' 37.763321', lng:  '-122.407946'}
              ]

  end

  def about
  end

end

