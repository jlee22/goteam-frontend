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
        if v['date'].gsub("-","") > DateTime.now.strftime("%Y-%m-%d %H:%M").gsub("-","") && @upcoming_matches.length < 3
          p v['date'].gsub("-","") > DateTime.now.strftime("%Y-%m-%d %H:%M").gsub("-","")
          p v['date'].gsub("-","")
          p DateTime.now.strftime("%Y-%m-%d %H:%M").gsub("-","")
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
