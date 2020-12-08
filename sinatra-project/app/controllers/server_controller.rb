class ServerController < ApplicationController
    get '/servers' do
        @servers = server.all
        erb :'/servers/index' 
      end
    
      get '/servers/new' do 
        erb :'/servers/new'
      end
    
      post '/servers' do 
        
      end
    
      get '/servers/:id/edit' do 
        @server = server.find(params[:id])
        erb :'/servers/edit'
      end
    
      get '/servers/:id' do 
        @server = server.find(params[:id])
        erb :'/servers/show'
      end
    
      patch '/servers/:id' do 
       
      end
      delete '/servers/:id' do
      end
end