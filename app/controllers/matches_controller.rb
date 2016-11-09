class MatchesController < ApplicationController

  def show
    @location = HTTParty.get(URL + 'matches/#{:id}')
    @team = ''
  end

  def update
    @team = HTTParty.put(URL + "/users/#{params["user_id"]}/teams/#{params["id"]}",
      :body =>  {"home_team": {"score": params["score_1"]},
                "away_team": {"score": params["score_2"]}} )
  end

end
