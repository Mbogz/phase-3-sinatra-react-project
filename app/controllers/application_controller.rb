class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #get "/" do
   # { message: "Good luck with your project!" }.to_json
  #end

  get "/users" do
    uers = User.all
    users.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  delete "/users/:id" do |delete|
    user = User.find(params[:id])
    user.destroy
  end


  get "/products" do
    product = Product.find(params[:id])
    product.to_json
  end

  post "/products" do
    product = Product.create(name:params[:name],quantity:params[:quantity],price:params[:price])
    product.to_json
  end

  delete "/products/:id" do |delete|
    product = Product.find(params[:id])
    product.destroy
  end

  get "/orders" do
    order = Order.finf(params[:id])
    order.to_json
  end

  put "/orders/:id" do
    order = Order.find(params[:id])
    order.update(user_id: params[;user_id],product_id:params[:product_id],quantity:params[:quantity],total_price:params[:total_price])
    order.to_json
  end

  delete "/orders/:id" do
    order = Order.find(params[:id])
    order.destroy
  end


end
