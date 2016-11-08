module UsersHelper

  URL = 'https://api-goteam.herokuapp.com/api'

  def self.get(id)
    HTTParty.get(URL + "/users/#{id}.json")
  end

  def current_user
    user = HTTParty.get(URL + "/users/#{session[:id]}.json")
    @current_user||= user if session[:id]
  end

  def logged_in
    current_user
  end

  def login(user)
    session[:id] = user['id']
  end

  def logout
    session[:id] = nil
  end

end
