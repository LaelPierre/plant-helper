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
      redirect_to my_plants_path
    else
      render 'plants/show'
    end
  end

  private

  def user_plant_params
    params.require(:user_plant).permit(:plant_age, :plant_health, :plant_id, :nickname)
  end
end
