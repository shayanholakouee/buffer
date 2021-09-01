class SessionController < ApplicationController
    
    def new
    end
    #Log In
    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "logged In successfuly"
        else
            flash[:alert] = 'Invalid Email or Password'
            render :new
        end
    end
    
    #Log Out
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: 'logged out'
    end
    
end
