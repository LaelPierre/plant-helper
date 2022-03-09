class UserPlantsController < ApplicationController
  def index
    @plants = Plant.all
    @user_plants = current_user.user_plants
    @user_plant = UserPlant.new
  end

  def create
    @user_plant = UserPlant.new(user_plant_params)
    @plant = Plant.find(params[:plant_id])
    @user_plant.plant = @plant
    @user_plant.user = current_user
    if @user_plant.save
      if current_user.onboarded == true
        create_water_user_task
        create_fertilizer_user_task
      end
      redirect_to my_plants_path
    else
      render 'plants/show'
    end
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
    @user_task.save
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
    @user_task.save
  end

  private

  def user_plant_params
    params.require(:user_plant).permit(:plant_age, :plant_health, :plant_id, :nickname)
  end
end
