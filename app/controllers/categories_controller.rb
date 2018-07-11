class CategoriesController < ApplicationController
    def show 
        @categories_first_h = Category.first(Category.count / 2 + 1)
        @categories_second_h = Category.offset(Category.count / 2 + 1)
        @category = Category.find(params[:id])
        @products = @category.products
    end   
end
