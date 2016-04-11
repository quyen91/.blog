class GallerysController < ApplicationController
  def new
  	@gallery = Gallery.new
  end
end
