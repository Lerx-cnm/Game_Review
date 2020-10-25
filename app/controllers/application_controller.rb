class ApplicationController < ActionController::Base

    def authentication_required
        if !logged_in?
            redirect_to login_path
        end
    end

    def logged_in?
        session[:user_id] ? true : false
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def require_login
        return head(:forbidden) unless session.include? :user_id
    end
end
