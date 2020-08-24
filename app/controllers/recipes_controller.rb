class RecipesController < ApplicationController
    def new
        @recipe=Recipe.new
    end

    def index
        @recipes=Recipe.all
    end
    def show
        find
    end

    def create
        @recipe=Recipe.create(recipe_params)
        redirect_to recipe_path(@recipe)
    end 

    def edit
        find
    end
    def update
        find
        @recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    private
    def find
        @recipe=Recipe.find(params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:name,ingredient_ids:[])
    end

end
