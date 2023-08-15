class TasksController < ApplicationController
  # GET all
  def index
    @tasks = Task.all
  end

  # CREATE step one get
  def new
    @task = Task.new
  end

  # CREATE step two post
  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path(@task)
  end

  # GET one
  def show
    @task = Task.find(params[:id])
  end

  # UPDATE step one get
  def edit

  end

  # UPDATE step two patch
  def update

  end

  # DELETE
  def destroy

  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
