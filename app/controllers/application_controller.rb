class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_categories

  private

    def get_categories
      @categories_first_h = Category.first(Category.count / 2 + 1)
      @categories_second_h = Category.offset(Category.count / 2 + 1)
    end
end
