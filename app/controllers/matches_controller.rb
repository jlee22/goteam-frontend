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
    @match = MatchesHelper.get(current_user['id'], params['id'])
    p "*" * 50
    p @match["match"]
    p "*" * 50

    @home_team = @match['Home_team']
    @away_team = @match['Away_team']

  end

  def update
    @team = HTTParty.put(URL + "/users/#{params["user_id"]}/teams/#{params["id"]}",
      :body =>  {"home_team": {"score": params["score_1"]},
                "away_team": {"score": params["score_2"]}} )
  end

end
