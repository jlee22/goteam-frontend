class UsersController < ApplicationController

before_action :define_url

  def show
    user_id = params[:id]
    @user = HTTParty.get(@url + "/users/#{user_id}.json")
    @stats = HTTParty.get(@url + "/users/#{user_id}/stats.json")
    # @sports = HTTParty.get(@url + "/sports.json")
    # @sport_names = find_sport(@sports, @stats)
  end
  def new
    @user = User.new
  end
end

private

def define_url
  @url = "https://api-goteam.herokuapp.com/api"
end

def find_sport(all_sports, user_stats)
  user_sports = []
  all_sports.each do |sport|
    user_stats.each do |stat|
      if sport['id'] == stat['sport_id']
        user_sports << sport
      end
    end
  end
  return user_sports
end
