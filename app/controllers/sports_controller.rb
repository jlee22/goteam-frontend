class SportsController < ApplicationController

  before_action :set_sports

  def index
    @uniq_sports = @sports.uniq { |sport| sport["category"] }
  end

  def show
    @sport = @sports.find { |sport| sport["id"] == params["id"].to_i }
    # CURRENT USER ID NEEDED
    @stat = HTTParty.post(api_url + "/sports/#{params["id"]}/stats/find.json", body: {"user_id": 1})
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

  def set_sports
    @sports = HTTParty.get(api_url + "/sports.json")
  end
end
