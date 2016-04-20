class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
  end
  def new
    @gallery = Gallery.new
  end
  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save!
      flash[:success] = "Save success"
      redirect_to galleries_url
    end
  end
  private
  def gallery_params
    params.require(:gallery).permit(:caption, :image_file)
  end
end
