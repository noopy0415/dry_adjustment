class TasksController < ApplicationController
  def index
    @page = "受入"
    @tasks = Task.all
  end

  def show
  end

  def edit
    @page = "受入編集"
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attribute(:task_act, false)
    redirect_to tasks_path
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
      render :new
    end
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:user_id, :req_user_name, :req_valiety, :task_note, :task_act)
  end

end
