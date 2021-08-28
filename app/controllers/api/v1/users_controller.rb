class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json:  @users 
    end 

    def create 
        user = User.new(user_params)
        if users.save
            render json:  @users 
        else 
            render json: {error: 'Error creating user'}
        end 
    end 

    def show 
        user = User.find(params[:id])
        render json: @users 
    end 

    def destroy
        @users  = User.find(params[:id])
        @users .destroy
    end 

    private 

    def user_params
        params.require(:user).permit(:points)
    end 
end
