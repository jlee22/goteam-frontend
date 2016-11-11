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
    elsif category.include?("basketball")
      "sport_icons/basketball.svg"
    elsif category.include?("bowling")
      "sport_icons/bowling.svg"
    elsif category.include?("volley ball")
      "sport_icons/volleyball.svg"
    elsif category.include?("golf")
      "sport_icons/golf.svg"
    elsif category.include?("rails")
      "sport_icons/browser.svg"
    elsif category.include?("flag football")
      "sport_icons/flag_football.svg"
    elsif category.include?("ultimate frisbee")
      "sport_icons/frisbee.svg"
    elsif category.include?("billiards")
      "sport_icons/billiards.svg"
    end
  end

end
