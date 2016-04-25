class UsersController < ApplicationController
  def new
  @user = User.new
end

def create
  User.create(user_params)
  redirect_to log_in_path
end

def log_in

end

def profile
  authenticate!
  @user = current_user



end

private

def user_params
  params.require(:user).permit(:username, :password)
end

end
