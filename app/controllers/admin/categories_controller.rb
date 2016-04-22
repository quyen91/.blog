class Admin::CategoriesController < Admin::ApplicationController
  def new
    @category = Category.new
  end
  def index
    @categories = Category.all
  end
  private
  def category_params
    params.require(:category).permit(:name)
  end
end
