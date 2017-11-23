class RecipesController < ApplicationController
	
	def index
		if signed_in?
			@recipes = current_user.recipes
		else
			redirect_to sign_in_path
		end
	end


	def search
		@z = "%#{params[:query]}%"
		@recipes = Recipe.where("title ILIKE ? or description ILIKE ?", @z, @z)
		render "index"
	end


	def random

	end


	def new

	end

	def show 
		@recipe = Recipe.find(params[:id])
		respond_to do |format|
			format.js {}
			format.html {}
		end
	end

	def create
		@recipe = Recipe.new(recipe_params)
		@recipe.user_id = current_user.id
		if @recipe.save
	      redirect_to recipes_index_path
	    else
	      redirect_to profile_path
	    end
	end


	def recipe_params	
	    params.require(:recipe).permit(:title, :description)
	end

	def gimmick

	end

end