class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
end

def new
  @user = User.new
end

def create
  @user = User.create(user_params)
  @user.save
  redirect_to user_path(@user)
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  @user.update(user_params)
  redirect_to show_user_path
end

private

 def user_params
   params.require(:user).permit(:name)
 end

end