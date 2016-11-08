class UsersController < ApplicationController

  def show
    user_id = params[:id]
    @user = UsersHelper.get(user_id)
    @stats = HTTParty.get(api_url + "/users/#{user_id}/stats.json")
    # @sports = HTTParty.get(@url + "/sports.json")
    # @sport_names = find_sport(@sports, @stats)
  end
end

private

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
