class SessionsController < ApplicationController

    def new 
        @user = User.new
        binding.pry
    end

    def create
      if params[:username] && find(params[:username]) && @user.authenticate(params[:password])

        @user = User.where(username: params[:username])

        session[:user_id] = @user.id 
        binding.pry
        redirect_to games_path
      end
    end


    private 

    def find(user)
        binding.pry
      !User.where(user) ? true : false
    end
end