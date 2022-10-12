
class SessionsController < ApplicationController
def create
    @user = User.find_by(username: params[:username])
    # authenticate user credential
    if !!@user && user.authenticate(params[:password])
        # set session and redirect on success
        session[:user_id] = @user.id
        redirect_to user_path
    else
        message = "something went wrong! Make sure your username and password"
        redirect_to login_path, notice: message
    end
   end  
end
