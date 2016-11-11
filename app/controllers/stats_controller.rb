class StatsController < ApplicationController

  def show

  end

  def update
    @stat = StatsHelper.update(params["user_id"],params["id"],session,params["active"])
    if params["active"] == "true"
      created_match = MatchesHelper.create(session, @stat["sport_id"])
      p line
      p created_match
      if created_match["message"]
        @message = created_match["message"].to_s
        @sport = params["sport"]
        render "sports/show"
      else
        @match = created_match
        date = DateTime.strptime(@match["match"]["date"],"%Y-%m-%d %H:%M")
        @day = date.strftime("%b %d, %Y")
        @time = date.strftime("%A %l:%M %p")
        @location = @match["match"]["location"]
        @sport = params["sport"]
        @home_team = created_match['Home_team']
        @away_team = created_match['Away_team']
        render "matches/show"
      end
    else
      redirect_to user_path(session["id"])
    end
  end

end
