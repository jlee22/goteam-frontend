class MatchesController < ApplicationController


  def index
    @matches = MatchesHelper.list(session)
    @upcoming_matches = []
    @past_matches = []
    @matches.each do |match|
      match.each do |k,v|
        if v['date'] > DateTime.now.strftime("%d/%m/%Y %H:%M")
          @upcoming_matches << match
        elsif v['date'] < DateTime.now .strftime("%d/%m/%Y %H:%M")
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
    redirect_to user_path
  end

end
