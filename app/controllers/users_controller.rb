class UsersController < ApplicationController

  def show
    @user = UsersHelper.get(current_user['id'])
    @stats = StatsHelper.list(current_user['id'])
    @matches = MatchesHelper.list(current_user['id'])
    p '---------------------------'
    p @matches
    p '---------------------------'
  end
end
