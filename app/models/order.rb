class Order <ActiveRecord::Base
    belongs_to :User
    belongs_to :Product

    def self.get_all_orders
        params = []
        Order.all.each do |order|
            name_and_order = [oreder.user.user_id,order.order]
            params << name_and_order
        end
        params
    end

    def self.create_order(params)
        Order.create(user_id: params[:user_id],product_id: params[:product_id],quantity: params[:quantity],total_price: params[:total_price])
        return "Order created"
    end

    def update_order(params)
        update(user_id: params[:user_id],product_id: params[:product_id],quantity: params[:quantity],total_price: params[:total_price])
    end
end
