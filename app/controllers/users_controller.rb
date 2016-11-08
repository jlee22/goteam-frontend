class UsersController < ApplicationController

  def show
    @user = UsersHelper.get(current_user['id'])
    @stats = StatsHelper.list(current_user['id'])
    # @sports = HTTParty.get(@url + "/sports.json")
    # @sport_names = find_sport(@sports, @stats)
  end
end
