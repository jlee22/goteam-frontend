class UsersController < ApplicationController

  def show
    p "****" * 15
    p current_user['id']
    p "****" * 15
    @user = UsersHelper.get(current_user['id'])
    @stats = StatsHelper.list(current_user['id'])
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
