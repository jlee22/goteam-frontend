module UsersHelper

  # URL = 'https://api-goteam.herokuapp.com/api'
  URL = "http://localhost:3001/api"

  def self.get(session)
    HTTParty.get(URL + "/users/+"+ session[:id].to_s + ".json?token=" + session[:token].to_s).parsed_response
  end

  def self.post(body_hash)
    HTTParty.post(URL + '/users.json', :body=>body_hash)
  end

  def current_user
    user = HTTParty.get(URL + "/users/" + session[:id].to_s + ".json?token=" + session[:token].to_s).parsed_response
    @current_user||= user if session[:id]
  end

  def logged_in
    current_user
  end

  def login(user)
      session[:id] = user.parsed_response["user"]['id']
      session[:token] = user.parsed_response["token"]
  end

  def logout
    session[:id] = nil
    session[:token] = nil
  end

end
