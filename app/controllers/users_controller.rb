class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def new
        @user = User.new
    end
      
    def create
        @user = User.create!(create_params)
        render json: @user
    end

    private

    def create_params
        params.permit(:username, :email, :password)
    end

end
 