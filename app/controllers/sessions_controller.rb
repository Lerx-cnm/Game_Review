class SessionsController < ApplicationController

    def new 
        @user = User.new
    end
    #POST '/login/:id'
    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id 
          redirect_to games_path
        else 
          @error = "Please make sure all fields are filled in and valid."
          render :new 
        end
      end

    def google
      @user = User.find_or_create_by(username: auth["info"]["first_name"]) do |user|
        user.password = SecureRandom.hex(8)
      end
      if @user && @user.id
        session[:user_id] = @user.id
        redirect_to games_path
      else
        redirect_to login_path
      end
    end

    def delete
      session.clear
      redirect_to login_path
    end

    private 

    def auth 
      request.env['omniauth.auth']
    end

end