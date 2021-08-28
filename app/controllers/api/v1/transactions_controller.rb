class Api::V1::TransactionsController < ApplicationController
    before_action :set_account 

    def index
        @transactions = @user.transactions
        render json: @transactions
    end 

    def show 
        @transaction = @user.transactions.find(params[id: params[:id]])

    end 

    def create 
        @transaction = @user.transactions.new(transaction_params)
        if @user.update_points(@transaction) != "Your balance is too low!"
            @transaction.save
            render json: @transaction
        else 
            render json: {error: "Your balance is too low!"}
        end 
    end 

    def destroy
    end 

    private 

    def set_account
        @user = User.find(params[:user_id])
    end 

    def transaction_params
        params.require(:transaction).permit(:payer, :points, :timestamp)
    end 
end
