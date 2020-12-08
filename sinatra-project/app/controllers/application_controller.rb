require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end
  
  
  helpers do
    def current_server
      @current_server ||= Server.find_by(:id => session[:user_id]) if session[:id]
    end
    def is_logged_in?
      !!current_server
    end
  end
end
