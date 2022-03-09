class UsersController < ApplicationController
  def update
    current_user.update(user_params)
    @tasks = Task.all.map(&:id)
    user_plants = current_user.user_plants
    user_plants.each do |user_plant|
      @user_plant = user_plant
      create_fertilizer_user_task
    end
    current_user.update(onboarded: true)
    redirect_to loader_path
  end

  def create_water_user_task

  end

  def create_fertilizer_user_task
    @user_task = UserTask.new
    @user_task.task = Task.last
    @user_task.user_plant = @user_plant
    @user_task.frequency = 1
    @user_task.start_date = Date.today.next_occurring(current_user.prefered_day.downcase.to_sym)
    @user_task.name = @user_plant.nickname
    @user_task.description = @user_task.task.description
  end

  private

  def user_params
    params.require(:user).permit(:temperature, :sun_exposure, :prefered_day)
  end
end
