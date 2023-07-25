class User < ActiveRecord::Base
    has_many :orders

    def self.create_user(params)
        name = params[:user_id]
        email = params[:email]
        password = params[:password]
        address = params[:address]
    end

    def update_user(params)
        user = User.find(params[:id])
        user.update(params[:update] => params[:value])
    end
end