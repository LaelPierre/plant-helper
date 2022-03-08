class UserTasksController < ApplicationController
  def index
    @user_tasks = current_user.user_tasks.where(done: false)
  end

  def new
    @user_task = UserTask.new
  end

  def create
    @task = Task.find(params["user_task"]["task_id"].to_i)
    @user_plant = UserPlant.find(params["user_task"]["user_plant_id"].to_i)
    @user_task = UserTask.new(user_task_params)
    @user_task.task = @task
    @user_task.user_plant = @user_plant
    if @user_task.save!
      redirect_to dashboard_path
    else
      render new
    end
  end

  def update
    UserTask.find(params[:id]).update!(done: true)
    redirect_to dashboard_path
  end

  private

  def user_task_params
    params.require(:user_task).permit(:task_id, :user_plant_id, :frequency)
  end
end
