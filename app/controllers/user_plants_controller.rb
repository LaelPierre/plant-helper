class UserPlantsController < ApplicationController
  def index
    @plants = Plant.all
    @user_plant = UserPlant.new
  end

  def create
    raise
  end
end
