class SportsController < ApplicationController

  before_action :define_url, :set_sports

  def index
    @uniq_sports = @sports.uniq { |sport| sport["category"] }
  end

  def create
  end

  def show
  end

  def get_type
    # Hit route from Sports Index view
    if request.xhr?
      # All matches for sport category
      @game_types = @sports.select { |sport| sport["category"] == params[:sport][:category]}
      render json: @game_types
    end
  end

  private

  def define_url
    @url = "https://api-goteam.herokuapp.com/api"
  end

  def set_sports
    @sports = HTTParty.get(@url + "/sports.json")
  end
end
