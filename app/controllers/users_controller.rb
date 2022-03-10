class UsersController < ApplicationController
  def update
    current_user.update(user_params)
    user_plants = current_user.user_plants
    user_plants.each do |user_plant|
      @user_plant = user_plant
      create_water_user_task
      create_fertilizer_user_task
    end
    current_user.update(onboarded: true)
    redirect_to loader_path
  end

  def create_water_user_task
    @temp = { 25 => -0.2, 24 => -0.15, 23 => -0.1, 22 => -0.05, 21 => 0.0, 20 => 0.05, 19 => 0.1, 18 => 0.15, 17 => 0.2 }
    @sun = { "10" => -0.2, "9" => -0.16, "8" => -0.12, "7" => -0.08, "6" => -0.04, "5" => 0.0, "4" => 0.04, "3" => 0.08, "2" => 0.12, "1" => 0.16, "0" => 0.2}
    # first watering task
    @user_task = UserTask.new
    @user_task.task = Task.first
    @user_task.user_plant = @user_plant
    @user_task.frequency = (define_humidity(@user_plant) * (1 + @temp[current_user.temperature] + @sun[current_user.sun_exposure])).round
    if Date::DAYNAMES[Date.today.wday] == current_user.prefered_day
      @user_task.start_date = Date.today
    else
      @user_task.start_date = Date.today.next_occurring(current_user.prefered_day.downcase.to_sym)
    end
    @user_task.name = @user_plant.nickname
    @user_task.description = @user_task.task.description
    @user_task.save

    # Future tasks
    i = 1
    10.times do
      @future_water_task = UserTask.new
      @future_water_task.task = Task.first
      @future_water_task.user_plant = @user_plant
      @future_water_task.frequency = (define_humidity(@user_plant) * (1 + @temp[current_user.temperature] + @sun[current_user.sun_exposure])).round
      if Date::DAYNAMES[Date.today.wday] == current_user.prefered_day
        @future_water_task.start_date = Date.today.next_day(@user_task.frequency * i)
      else
        @future_water_task.start_date = Date.today.next_occurring(current_user.prefered_day.downcase.to_sym).next_day(@user_task.frequency * i)
      end
      @future_water_task.name = @user_plant.nickname
      @future_water_task.description = @future_water_task.task.description
      @future_water_task.save
      i += 1
    end
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
    # first fertilizer task
    @user_task = UserTask.new
    @user_task.task = Task.last
    @user_task.user_plant = @user_plant
    @user_task.frequency = 1
    if Date::DAYNAMES[Date.today.wday] == current_user.prefered_day
      @user_task.start_date = Date.today
    else
      @user_task.start_date = Date.today.next_occurring(current_user.prefered_day.downcase.to_sym)
    end
    @user_task.name = @user_plant.nickname
    @user_task.description = @user_task.task.description
    @user_task.save

    # Future tasks
    y = 1
    10.times do
      @future_fertilizer_task = UserTask.new
      @future_fertilizer_task.task = Task.last
      @future_fertilizer_task.user_plant = @user_plant
      @future_fertilizer_task.frequency = 1
      if Date::DAYNAMES[Date.today.wday] == current_user.prefered_day
        @future_fertilizer_task.start_date = Date.today.next_month(@user_task.frequency + y)
      else
        @future_fertilizer_task.start_date = Date.today.next_occurring(current_user.prefered_day.downcase.to_sym).next_month(@user_task.frequency + y)
      end
      @future_fertilizer_task.name = @user_plant.nickname
      @future_fertilizer_task.description = @future_fertilizer_task.task.description
      @future_fertilizer_task.save
      y += 1
    end
  end

  private

  def user_params
    params.require(:user).permit(:temperature, :sun_exposure, :prefered_day)
  end
end
