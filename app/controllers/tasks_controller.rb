class TasksController < ApplicationController
  def index
    @new_task = Task.new
  end

  def create
    @tasks = Task.new(task_params)
    @tasks.save!
    redirect_to root_path
  end

  private
    def task_params
      params.require(:task).permit(:title)
    end
end
