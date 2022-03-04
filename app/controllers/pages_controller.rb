class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def loader
    sleep(4.0)
    redirect_to my_plants_path
  end
end
