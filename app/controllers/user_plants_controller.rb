class UserPlantsController < ApplicationController
  def index
    @plants = Plant.all
    @user_plants = current_user.user_plants
    @user_plant = UserPlant.new
  end

  def create
    raise
  end
end
