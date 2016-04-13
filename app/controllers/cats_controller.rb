class CatsController < ApplicationController

	def index
		@cats = Cat.all
	end

	def new
		@cat = Cat.new
	end

	def create
		@cat = Cat.create(cat_params)
		redirect_to cats_path
	end

	def show
		@cat = Cat.find(params[:id])
	end
	
	def edit
	end

	def update
	end

	private

	def cat_params
		params.require(:cat).permit(:image, :caption)
	end
end
