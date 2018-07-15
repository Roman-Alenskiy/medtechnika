class ProductsController < ApplicationController

    def show 
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def create
        description_cleaner
        @product = Product.new(product_params)
        if @product.save
            flash[:success] = "Продукт успешно создан!"
            redirect_to manager_products_new_path
        else
            flash.now[:danger] = "Неккоректное заполнение полей!"
            render layout: 'control_panels', template: 'control_panels/products_new'
        end
        
    end

    def edit 
        @product = Product.find(params[:id])
    end

    def update 
        description_cleaner
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

        def description_cleaner
            product_params[:description].gsub!(/font-family.+?;|color.+?;/, "") # font-family and color reset
        end
end
