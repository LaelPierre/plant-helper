class UsersController < ApplicationController
  def update
    current_user.update(user_params)
    redirect_to loader_path
  end

  private

  def user_params
    params.require(:user).permit(:temperature, :sun_exposure, :prefered_day)
  end
end
