class UserController < ActionController::Base
  def new
    @user = User.new
  end

  def create
  end
  def update
  end

  private
  def user_params
    params.require(:user).permit(:username, :email)
  end
end
