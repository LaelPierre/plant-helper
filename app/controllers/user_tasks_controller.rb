class UserTasksController < ApplicationController
  def index
    @user_tasks = current_user.user_tasks
  end

  def new
    @user_task = UserTask.new
  end
end
