class Admin::DashboardController < Admin::ApplicationController
  def index
    @posts = Post.all
  end
end
