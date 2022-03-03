class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def create_tasks
    sleep(4.0)
    redirect_to my_plants_path
  end
end
