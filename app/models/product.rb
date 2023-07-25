class Product < ActiveRecord::Base
    has_many :orders

    def self.get_all_products
        params = []
        Product.all.each do |product|
            product = [product.product_id]
            params << product
        end
        params
    end

    def self.create_product(params)
        create(name: params[:name],description: params[:description],price: params[:price],image_url: params[:image_url])
    end

    def update_product(params)
        update(name: params[:name],description: params[:description],price: params[:price],image_url: params[:image_url])
    end
end
