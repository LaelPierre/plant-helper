class UsersController < ApplicationController
  def update
    current_user.update(user_params)
    user_plants = current_user.user_plants
    user_plants.each do |user_plant|
      @user_plant = user_plant
      create_water_user_task
      @user_task.save
    end
    current_user.update(onboarded: true)
    redirect_to loader_path
  end

  def create_water_user_task
    @temp = { 25 => -0.2, 24 => -0.15, 23 => -0.1, 22 => -0.05, 21 => 0.0, 20 => 0.05, 19 => 0.1, 18 => 0.15, 17 => 0.2 }
    @sun = { "10" => -0.2, "9" => -0.16, "8" => -0.12, "7" => -0.08, "6" => -0.04, "5" => 0.0, "4" => 0.04, "3" => 0.08, "2" => 0.12, "1" => 0.16, "0" => 0.2}
    @user_task = UserTask.new
    @user_task.task = Task.first
    @user_task.user_plant = @user_plant
    @user_task.frequency = (define_humidity(@user_plant) * (1 + @temp[current_user.temperature] + @sun[current_user.sun_exposure])).round
    @user_task.start_date = Date.today.next_occurring(current_user.prefered_day.downcase.to_sym)
    @user_task.name = @user_plant.nickname
    @user_task.description = @user_task.task.description
  end

  def define_humidity(user_plant)
    freq = 0
    case user_plant.plant.humidity
    when "Dry"
      freq = 21
    when "Normal"
      freq = 14
    when "High"
      freq = 7
    end
    return freq
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
