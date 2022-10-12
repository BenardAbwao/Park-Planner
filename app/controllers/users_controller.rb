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
        # user = User.create!(create_params)
        render json: @user

        # if @user.valid?
        #     app_response(status_code: 201, message: "Account Successfully Created", body: user)

        # else
        #     app_response(status_code: 422, message: "Invalid input", body: user.errors.full_messages)

        # end

    end

    private
    
    def create_params
        params.permit(:username, :email, :password)
    end

end
