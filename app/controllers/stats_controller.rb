class StatsController < ApplicationController

  def update
    stat = StatsHelper.update(params["user_id"],params["id"],session,params["active"])
    if params["active"] == "true"
      created_match = MatchesHelper.create(session, stat["sport_id"])
      @home_team = created_match['Home_team']
      @away_team = created_match['Away_team']
      render "matches/show"
    else
      redirect_to user_path(session["id"])
    end
  end

end
