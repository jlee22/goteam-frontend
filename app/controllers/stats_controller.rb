class StatsController < ApplicationController

  def update
    @stat = StatsHelper.update(params["user_id"],params["id"],session,params["active"])
    if params["active"] == "true"
      created_match = MatchesHelper.create(session, @stat["sport_id"])
      if created_match["message"]
        @message = created_match["message"].to_s
        @sport = params["sport"]
        render "sports/show"
      else
        @home_team = created_match['Home_team']
        @away_team = created_match['Away_team']
        render "matches/show"
      end
    else
      redirect_to user_path(session["id"])
    end
  end

end
