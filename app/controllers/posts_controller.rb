class PostsController < ApplicationController
  def index
    @post_new = Post.new 
  	@posts = Post.order(created_at: :desc).page(params[:page]).per(10)
  end
  def new
  	@post = Post.new
  end
  def show
  end
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: "Post created successfully"}
        format.js {}
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  def edit
    @post = Post.find(params[:id]);
  end
  def update
  end
  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
