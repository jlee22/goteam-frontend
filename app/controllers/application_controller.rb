class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper
  include UsersHelper
  include TeamsHelper
  include SportsHelper
  include MatchesHelper
  include StatsHelper
end
