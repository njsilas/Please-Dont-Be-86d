class OrderController < ApplicationController
    get '/orders' do
        @orders = order.all
        erb :'/orders/index' 
      end
    
      get '/orders/new' do 
        erb :'/orders/new'
      end
    
      post '/orders' do 
        @order = Order.new(params)

        redirect to "orders/#{@order.id}"
      end
    
      get '/orders/:id' do 
        @order = order.find(params[:id])
        erb :'/orders/show'
      end
    
      patch '/orders/:id' do 
    
        redirect to "orders/#{@order.id}"
      end

end