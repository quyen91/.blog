class Admin::PostsController < Admin::ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end
  
  private
  def post_params
    params.require[:post].permit(:title, :content, :tag)
  end
end
