class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

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
    redirect_to tasks_path
  end

  # GET one
  def show
  end

  # UPDATE step one get
  def edit
  end

  # UPDATE step two patch
  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  # DELETE
  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
