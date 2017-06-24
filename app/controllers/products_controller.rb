class ProductsController < ApplicationController
    def new
        @product = Product.new
    end
    
    def create
        #render plain: params[:product].inspect
        @product = Product.new( product_params )
        if @product.save
            # validation failed
            flash[:notice] = "Product was successfully created"
            redirect_to product_path(@product)
        else
            # show the new product created
            render 'new'
        end
    end
    
    def show
        @product = Product.find(params[:id])
    end
    
    private
    
        def product_params
            params.require(:product).permit(:name, :description)
        end
end