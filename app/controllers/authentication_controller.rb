class AuthenticationController < ApplicationController

     def create
        user = User.find_by(email: params[:email])

        if user.nil?
            flash[:error] = "There was an error logging in. Please check your email and password"
            render action: 'new'
        else
            session[:user_id] = user.id
            flash[:success] = "Thanks for logging in!"
    redirect_to root_path
        end 
    end

  def destroy
    session.clear
    redirect_to root_path
  end
end


