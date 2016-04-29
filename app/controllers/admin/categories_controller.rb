class Admin::CategoriesController < Admin::ApplicationController
  def new

  end
  def index
    @category_new = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        # format.html { redirect_to @post, notice: "Post created successfully"}
        format.js {}
        # format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    Category.find(params[:id]).destroy
    flash[:success] = "You delete this category"
    redirect_to  admin_categories_path
  end
  private
  def category_params
    params.require(:category).permit(:name)
  end
end
