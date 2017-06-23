class ProductsController < ApplicationController
    def new
        @product = Product.new
    end
    
    def create
        #render plain: params[:product].inspect
        @product = Product.new( product_params )
        @product.save
        redirect_to products_show(@product)
    end
    
    private
    
        def product_params
            params.require(:product).permit(:name, :description)
        end
end