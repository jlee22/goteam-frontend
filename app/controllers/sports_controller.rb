class SportsController < ApplicationController

  before_action :define_url, :set_sports

  def index

    @uniq_sports = @sports.uniq { |sport| sport["category"] }
    
    # AJAX sport type (num of players)
  end

  def create
    # p '*' * 30
    # p params
    # p '*' * 30
    if request.xhr?
      # All matches for sport name
      @game_types = @sports.select { |sport| sport["category"] == params[:sport][:category]}
      p @game_types
      render json: @game_types
    end
  end

  def show
  end

  private

  def define_url
    @url = "https://api-goteam.herokuapp.com/api"
  end

  def set_sports
    @sports = HTTParty.get(@url + "/sports.json")
  end
end
