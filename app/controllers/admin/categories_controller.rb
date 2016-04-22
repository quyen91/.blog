class Admin::CategoriesController < Admin::ApplicationController
  def new
    @category = Category.new
  end
  def index
    @categories = Category.all
  end
end
