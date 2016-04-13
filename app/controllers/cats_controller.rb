class CatsController < ApplicationController

	def index
	end

	def new
		@cat = Cat.new
	end

	def create
		@cat = Cat.create(cat_params)
		redirect_to cats_path
	end

	private

	def cat_params
		params.require(:cat).permit(:image, :caption)
	end
end
