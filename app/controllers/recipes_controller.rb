class RecipesController < ApplicationController
    skip_before_action :authorize, only: :create


    def create
        # byebug
    end

    def index
        recipes= Recipe.all
        render json: recipes
    end
end
