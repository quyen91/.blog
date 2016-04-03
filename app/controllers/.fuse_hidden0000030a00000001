class PostsController < ApplicationController
  def index
    @post_new = Post.new 
  	@posts = Post.all
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
        format.html {}
        format.json {render :json => :post, :status => :created, :location => :post}
      end
    end
  end
  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
