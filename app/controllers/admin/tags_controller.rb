class Admin::TagsController < Admin::ApplicationController
	def new
	end
	def index
		@tags = Tag.all
	end
end
