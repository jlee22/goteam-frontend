module UsersHelper

  def current_user
    user = HTTParty.get("https://api-goteam.herokuapp.com/api/users/#{session[:id]}.json")
    @current_user||= user if session[:id]
  end

  def current_user=(user)
    @current_user = user
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
