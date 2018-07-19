class ControlPanelsController < ApplicationController
    before_action :authenticate_admin!
    before_action :get_categories, only: [:products_new, :products_edit]
    before_action :get_not_completed_requests
    
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

    def requests
        @requests_completed = OnlineRequest.where(completed: true)
    end

    private 
         
        def get_not_completed_requests
            @requests_not_completed = OnlineRequest.where(completed: false)
        end

end
