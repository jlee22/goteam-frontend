class UsersController < ApplicationController
  include UsersHelper
  def show
    @user = UsersHelper.get(session)
    @stats = StatsHelper.list(session)
    @matches = MatchesHelper.list(session)
    @upcoming_matches = []
    @past_matches = []
    @matches.each do |match|
      match.each do |k,v|
        if DateTime.strptime(v['date'],"%Y-%m-%d %H:%M") > DateTime.now && @upcoming_matches.length < 3
          p DateTime.strptime(v['date'],"%Y-%m-%d %H:%M")
          p DateTime.now
          p DateTime.strptime(v['date'],"%Y-%m-%d %H:%M") > DateTime.now.strftime("%Y-%m-%d %H:%M")
          @upcoming_matches << match
        elsif v['date'] > DateTime.now.strftime("%Y-%m-%d %H:%M") && @past_matches.length < 3
          @past_matches << match
        end
      end
    end
    p '--------' * 3
    p @past_matches
    p @upcoming_matches
    p '--------' * 3
  end

  def create
    @user = UsersHelper.post({"user"=>
    {"first_name"=>params['first_name'], "last_name"=>params['last_name'],"email"=>params['email'], "city"=>params['city'], "street"=>params['street'], "state"=>params['state'], "zip"=>params['zip'], "phone"=>params['phone'], "password"=>params['password']}})
    if @user['id'] != nil
      redirect_to root_path
    else
      render 'new'
    end
  end
end
