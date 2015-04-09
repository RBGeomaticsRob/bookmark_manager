require 'sinatra/base'
require 'data_mapper'
require 'rack-flash'

class BookmarkManager < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'
  use Rack::Flash
  use Rack::MethodOverride

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id]) if session[:user_id]
    end
  end

  run! if app_file == $PROGRAM_NAME

end

require './app/models/link' # needs to be done after setup hence the placing
require './app/models/user'
require './app/models/tag'
require './app/controllers/homepage'
require './app/controllers/links'
require './app/controllers/sessions'
require './app/controllers/tags'
require './app/controllers/users'

require_relative 'data_mapper_setup'