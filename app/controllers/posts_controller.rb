class PostsController < ApplicationController
  def index
    @post_new = Post.new
    if params[:tag]
      @posts = Post.tagged_with(params[:tag]).order(created_at: :desc).page(params[:page]).per(10)
    else 
    	@posts = Post.order(created_at: :desc).page(params[:page]).per(10)
    end
  end
  def new
  	@post = Post.new
  end
  def show
    @post = Post.find(params[:id])
  end
  def create
    @post = Post.new(post_params)
    
    respond_to do |format|
      if @post.save
        # format.html { redirect_to @post, notice: "Post created successfully"}
        format.js {}
        # format.json { render :show, status: :created, location: @post }
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
    @post = Post.find(params[:id]);
    # if @post.update_attributes(post_params)
  end
  private
  def post_params
    params.require(:post).permit(:title, :content, :tag_names)
  end

end
