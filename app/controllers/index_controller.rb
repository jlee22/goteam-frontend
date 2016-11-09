class IndexController < ApplicationController

  def index
    @session = '' #Session.new
    @sports = SportsHelper.list

    @matches

    @sports_matches = ''
    @tennis_singles = {
                {lat: '37.767221', lng: '-122.442799'},
                {lat: '37.775015', lng:  '-122.400628'},
                {lat:  ' 37.786281', lng:  '-122.438163'},
                {lat: '37.796529', lng: '-122.462091'},
                {lat: '37.796791', lng: '-122.396787'},
                {lat: '37.801403', lng: '-122.419897'}
              }

    @tennis_doubles = {
                {lat: '37.767221', lng: '-122.442799'},
                {lat: '37.725744', lng:  '-122.483349'},
                {lat:  ' 37.786281', lng:  '-122.438163'}
              }
    @soccer = {
                {lat: '37.779287', lng: '-122.396036'},
                {lat: '37.764863', lng:  '-122.409679'},
                {lat:  ' 37.763321', lng:  '-122.407946'}
              }

  end

  def about
  end

end

