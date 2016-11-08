module SportsHelper

  URL = 'https://api-goteam.herokuapp.com/api'

  def self.list
    HTTParty.get(URL + "/sports.json")
  end

  def self.get(id)
    HTTParty.get(URL + "/sports/#{id}.json")
  end

end
