class UsersController < ApplicationController

    def index

    end

    def new 
        @user = User.new
    end

    def create
        # binding.pry
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to login_path
        else
            render :new
        end
    end







    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end