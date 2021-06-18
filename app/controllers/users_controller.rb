class UsersController < ApplicationController

    def create
        # byebug
        user= User.create!(user_params)
        render json:user, status: :created
    end

    def show
        byebug
    end
    private
    def user_params
        params.permit(:username,:password,:passworld_confirmation,:image_url,:bio)
    end
end
