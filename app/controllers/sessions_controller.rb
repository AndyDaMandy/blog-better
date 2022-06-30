class SessionsController < ApplicationController
    def create
        @user = User.find_by(username: params[:username])
        ##authenticate user credentials
        if !!@user && @user.authenticate(params[:password])
            #set session and redirect on success
            sessionp[:user_id] = @user.id
            redirect_to user_path
        else
            #error message
            message = "Somethign went wrong! Make sure your username and password are correct!"
            redirect_to login_path, notice: message
        end
    end
end