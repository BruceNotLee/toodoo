class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :new_task, only: [:new, :index]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to tasks_url }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to tasks_url }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url }
    end
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def new_task
      @task = Task.new
    end

    def task_params
      params.require(:task).permit(:name)
    end
end
