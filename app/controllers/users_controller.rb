class UsersController < ApplicationController

    def index

    end

    def new 
        @user = User.new
    end

    def create
        # binding.pry
        @user = User.new(user_params)
        if User.find_by(username: user_params[:username])
            @error = "You seem to already be in our system!"
            render :'users/new'
        elsif @user.valid?
            @user.save
            session[:user_id] = @user.id 
            redirect_to games_path
        else
            @error = "Please fill in any missing fields"
            render :'users/new'
        end
    end







    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end