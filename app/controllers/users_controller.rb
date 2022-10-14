class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end




       #Get /me 
    def show
        user = User.find_by(id: session[:user_id])
        if user
            render json: user
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end



private 

def user_params
    params.permit(:username,:password)
end

end

