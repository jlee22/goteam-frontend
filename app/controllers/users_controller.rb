class UsersController < ApplicationController

  def show
    @user = UsersHelper.get(current_user['id'])
    @stats = StatsHelper.list(current_user['id'])
    @matches = MatchesHelper.list(current_user['id'])
    @upcoming_matches = []
    @past_matches = []
    p '---------------------------'
    p @matches
    p '---------------------------'
    @matches.each do |match|
      match.each do |k,v|
        if v['date'] > DateTime.now
          @upcoming_matches << match
        else
          @past_matches << match
        end
      end
    end


    p '---------------------------'
    p @upcoming_matches
    p '---------------------------'
    p @past_matches
    p '---------------------------'
  end
end
