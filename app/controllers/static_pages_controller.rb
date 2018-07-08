class StaticPagesController < ApplicationController
  def about
    @categories = Category.all
  end

  def history
    @categories = Category.all
  end

  def contacts
    @categories = Category.all
  end
end
