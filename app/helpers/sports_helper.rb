module SportsHelper

  URL = 'https://api-goteam.herokuapp.com/api'

  def self.list
    HTTParty.get(URL + "/sports.json")
  end

  def self.get(id)
    HTTParty.get(URL + "/sports/#{id}.json")
  end

  def self.get_sport_icon(category)


    case category.downcase
      when category.include?("soccer")
        return "/sport_icons/soccer-ball.png"
    end

  end

end
