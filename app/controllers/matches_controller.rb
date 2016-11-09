class MatchesController < ApplicationController

  def show
    # @location = HTTParty.get(URL + 'matches/')
    @match = HTTParty.get(URL + '/users/1/matches/1.json')
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
