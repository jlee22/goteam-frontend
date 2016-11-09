module SportsHelper

  URL = 'https://api-goteam.herokuapp.com/api'

  def self.list
    HTTParty.get(URL + "/sports.json")
  end

  def self.get
    HTTParty.get(URL + "/sports/1.json")
  end

end
