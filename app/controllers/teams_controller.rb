class TeamsController < ApplicationController

  def create
    p 'HIT CREATE ROUTE'
    @team = HTTParty.post(URL + "/users/#{current_user["id"]}/teams.json", body: { "sport_id": params["sport_id"] })
    if @team["message"]
      render json: @team["message"]
    else
      render "/matches/show", layout: false
    end

  end

  def update
  end

end
