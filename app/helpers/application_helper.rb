module ApplicationHelper
  include UsersHelper
  include TeamsHelper
  include SportsHelper
  include MatchesHelper
  include StatsHelper

  def local_url
    'http://localhost:3001/api'
  end

end
