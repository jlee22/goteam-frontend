class IndexController < ApplicationController
  before_action :define_url
  
  def index
    @sports = HTTParty.get(@url + "/sports.json")
    @matches = HTTParty.get(@url + "/matches.json")
  end

  def about
  end
end



private

  def define_url
    @url = "https://api-goteam.herokuapp.com/api"
  end
