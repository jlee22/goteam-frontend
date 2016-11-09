class TeamsController < ApplicationController

  def create
    p 'HIT CREATE ROUTE'
    @match = HTTParty.post(URL + "/users/#{current_user["id"]}/matchs.json", body: { "sport_id": params["sport_id"] })
    if @match["message"]
      render json: @match["message"]
    else
      render "/matches/_create", layout: false
    end

  end

  def update
  end

end
