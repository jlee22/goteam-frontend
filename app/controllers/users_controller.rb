class UsersController < ApplicationController

before_action :define_url

  def show
    user_id = params[:id]
    @user = HTTParty.get(@url + "/users/#{user_id}.json")
    @stats = HTTParty.get(@url + "/users/#{user_id}/stats.json")
    # @sports = HTTParty.get(@url + "/sports.json")
    # @sport_names = find_sport(@sports, @stats)
  end

  def new

  end

  def create
     HTTParty.post(@url + '/users', :body=>  {"user"=>
      { "first_name"=>  'jeff',
        "last_name" =>  'fish',
        "email"     =>  '1@5453435431.com',
        "password"  =>  '1234',
        "street"    =>  '123 street',
        "city"      =>  'city',
        "state"     =>  'CA',
        "zip"       =>  '767267',
        "phone"     =>  '8053242984'
      }
    })
  end

end

private

def define_url
  @url = "https://api-goteam.herokuapp.com/api"
end
def register
    # HTTParty.post(@url + '/users', :body=>{"user"=>{"email"=>'rachael.stammy@vonrueden.info', "password"=>'password'}})

    HTTParty.post(@url + '/users', :body=>  {"user"=>
      { "first_name"=>  'jeff',
        "last_name" =>  'fish',
        "email"     =>  '1@5453435431.com',
        "password"  =>  '1234',
        "street"    =>  '123 street',
        "city"      =>  'city',
        "state"     =>  'CA',
        "zip"       =>  '767267',
        "phone"     =>  '8053242984'
      }
    })
end
def find_sport(all_sports, user_stats)
  user_sports = []
  all_sports.each do |sport|
    user_stats.each do |stat|
      if sport['id'] == stat['sport_id']
        user_sports << sport
      end
    end
  end
  return user_sports
end
