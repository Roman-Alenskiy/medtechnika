class CategoriesController < ApplicationController
    before_action :authenticate_admin!, except: [:show]

    layout "control_panels", :only => [ :edit, :create ]
    
    def new
        @category = Category.new
    end

    def create 
        @category = Category.new(category_params)
        if @category.save
            flash[:success] = "Категория успешно создана!"
            redirect_to manager_categories_path
        else 
            flash.now[:danger] = "Неккоректное заполнение полей!"
            @categories = Category.all # this need for correct render after fail category creation
            render template: 'control_panels/categories'
        end
    end

    def edit 
        @category = Category.find(params[:id])
        respond_to do |format|
            format.js
        end
    end

    def update
        @category = Category.find(params[:id])
        if @category.update_attributes(category_params)
            flash[:success] = "Категория успешно изменена!"
        else
            flash[:danger] = "Некорректное заполнение полей!"
        end
        redirect_to manager_categories_path
    end

    def destroy
        Category.find(params[:id]).destroy
        flash[:success] = "Категория успешно удалена!"
        redirect_to manager_categories_path
    end

    def show 
        @category = Category.find(params[:id])
        @products = @category.products.order(updated_at: :desc)
    end  
    
    private

        def category_params
            params.require(:category).permit(:name)
        end
end
