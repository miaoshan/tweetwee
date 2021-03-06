class SessionsController < ApplicationController
  helper_method :logged_in?

   def new; end

   def create
     user = User.find_by()
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to '/sessions/new'
    end
  end

   def destroy
    session.delete :name
    redirect_to root_path
  end

   def logged_in?
    session[:name].nil?
  end
end
