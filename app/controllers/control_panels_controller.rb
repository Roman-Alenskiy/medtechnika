class ControlPanelsController < ApplicationController
    before_action :authenticate_admin!
    
    def about_panel
    end

    def products
        @products = Product.order(category_id: :asc, name: :asc)
    end

    def products_new
        @product = Product.new
    end

    def products_edit
        @product = Product.find(params[:id])
    end

    def categories
        @category = Category.new
        @categories = Category.all
    end

end
