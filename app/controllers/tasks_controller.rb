class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @page = "受入"
    @tasks = Task.all
  end

  def new
    @page = "受入登録"
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      flash.now[:alert] = @task.errors.full_messages
      @page = "受入登録"
      render :new
    end
  end

  def show
    @page = "受入詳細"
    @task = Task.find(params[:id])
  end

  def edit
    @page = "受入編集"
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attribute(:task_act, false)
      redirect_to tasks_path
    else
      flash.now[:alert] = @task.errors.full_messages
      @page = "受入編集"
      render :edit
    end
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:user_id, :req_user_name, :req_valiety, :task_note, :task_act)
  end

end
