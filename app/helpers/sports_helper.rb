module SportsHelper

  URL = 'https://api-goteam.herokuapp.com/api'
  # URL = "http://localhost:3001/api"

  def self.list
    HTTParty.get(URL + "/sports.json")
  end

  def self.get(id)
    HTTParty.get(URL + "/sports/#{id}.json")
  end

  def self.get_sport_icon(category)
    category = category.downcase

    if category.include?("soccer")
      "sport_icons/soccer.svg"
    elsif category.include?("tennis")
      "sport_icons/tennis-ball.svg"
    elsif category.include?("badminton")
      "sport_icons/badminton.svg"
    elsif category.include?("table tennis")
      "sport_icons/ping-pong.svg"
    end
  end

end
