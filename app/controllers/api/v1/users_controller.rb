class Api::V1::UsersController < ApplicationController

    def index
    end 

    def create 
    end 

    def show 
    end 

    def destroy
    end 

    private 

    def user_params
        params.require(:user)
    end 
end
