class MatchesController < ApplicationController


  def index
    @matches = MatchesHelper.list(session)
    @upcoming_matches = []
    @past_matches = []
    @matches.each do |match|
      match.each do |k,v|
        if DateTime.strptime(v['date'],"%Y-%m-%d %H:%M") > DateTime.now
          @upcoming_matches << match
        elsif DateTime.strptime(v['date'],"%Y-%m-%d %H:%M") < DateTime.now
          @past_matches << match
        end
      end
    end
  end

  def show
    # @location = HTTParty.get(URL + 'matches/')
    @match = MatchesHelper.get(session, params['id'])
    @home_team = @match['Home_team']
    @away_team = @match['Away_team']
  end

  def update
    @match = MatchesHelper.put(params['match_id'], session,params["score_1"],params["score_2"])
    redirect_to user_match_path(session[:id],params["match_id"])
  end

end
