class IngredientsController < ApplicationController
    def new
        @ingredient=Ingredient.new
    end
    def index
        @ingredients=Ingredient.all
    end
    def show
        find
    end
    def create
        @ingredient=Ingredient.create(name:params[:ingredient][:name])
        redirect_to ingredient_path(@ingredient)
    end 
    def edit
        find
    end
    def update
        find
        @ingredient.update(name:params[:ingredient][:name])
        redirect_to ingredient_path(@ingredient)
    end

    private
    def find
        @ingredient=Ingredient.find(params[:id])
    end

end
