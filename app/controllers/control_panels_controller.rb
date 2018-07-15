class ControlPanelsController < ApplicationController
    
    def about_panel
    end

    def products
        @products = Product.all
    end

    def products_new
        @product = Product.new
    end

    def categories
        @category = Category.new
        @categories = Category.all
    end

end
