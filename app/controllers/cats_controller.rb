class CatsController < ApplicationController
	
	before_action :set_post, only: [:show, :edit, :update, :destroy]

	def index
		@cats = Cat.all
	end

	def new
		@cat = Cat.new
	end

	def create
		if @cat = Cat.create(cat_params)
			flash[:success]="Now everyone can check out your pussy"
			redirect_to cats_path
		else
			flash.now[:alert]="Oh No! Your cat ran away, try again"
			render :new
		end
	end

	def show
		
	end

	def edit
		
	end

	def update
		if @cat.update(cat_params)
			flash[:success]="You've successfully updated your \"cat\"tion *slowclap*."
			redirect_to cat_path(@cat)
		else
			flash.now[:alert]="No one can see that you updated that typo and now everyone thinks you can't spell.... try again"
			render :edit
		end
	end

	def destroy
		@cat.destroy
		redirect_to cats_path
	end

	private

	def cat_params
		params.require(:cat).permit(:image, :caption)
	end

	def set_post
		@cat = Cat.find(params[:id])
	end
end
