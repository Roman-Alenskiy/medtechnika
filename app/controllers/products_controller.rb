class ProductsController < ApplicationController

    def show 
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def create
        product_params[:description].gsub!(/font-family.+?;|color.+?;/, "") # font-family and color reset
        @product = Product.new(product_params)
        if @product.save
            flash[:success] = "Продукт успешно создан!"
            redirect_to new_product_path
        else
            flash.now[:danger] = "Неккоректное заполнение полей!"
            render 'new'
        end
        
    end

    def edit 
        @product = Product.find(params[:id])
    end

    def update 
        product_params[:description].gsub!(/font-family.+?;|color.+?;/, "") # font-family and color reset
        @product = Product.find(params[:id])
        if @product.update_attributes(product_params)
            flash[:success] = "Товар изменен!"
            redirect_to @product
        else
            render 'edit'
        end
    end

    private

        def product_params
            params.require(:product).permit(:name, :description, :price, :category_id, :picture)
        end
end
