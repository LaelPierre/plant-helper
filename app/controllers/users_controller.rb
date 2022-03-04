class UsersController < ApplicationController
  def update
    current_user.update(user_params)
    @tasks = Task.all.map(&:id)
    user_plants = current_user.user_plants
    user_plants.each do |user_plant|
      @user_task = UserTask.create!(
        task_id: @tasks.sample,
        user_plant_id: user_plant.id,
        frequency: rand(1..3)
      )
    end
    redirect_to dashboard_path

  end

  private

  def user_params
    params.require(:user).permit(:temperature, :sun_exposure, :prefered_day)
  end
end
