class DriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @page = "乾燥"
    @dries = Dry.all
    @tasks = Task.all
  end

  def new
    @page = "乾燥登録"
    @dry = Dry.new
    @dry.task_id = params[:format]
  end

  def create
    @dry = Dry.new(dry_params)
    if @dry.save
      redirect_to dries_path
    else
      flash.now[:alert] = @dry.errors.full_messages
      render :new
    end
  end

  def show
    @page = "乾燥詳細"
    @dry = Dry.find(params[:id])
  end

  def edit
    @page = "乾燥修正"
    @dry = Dry.find(params[:id])
  end

  def update
    @dry = Dry.find(params[:id])
    if @dry.update(dry_params)
      redirect_to dries_path
    else
      flash.now[:alert] = @dry.errors.full_messages
      render :edit
    end
  end

  def destroy
  end

  private

  def dry_params
    params.require(:dry).permit(:task_id, :drier_id, :init_moist, :dry_condition1, :dry_condition2, :dry_condition3, :dry_condition4, :dry_condition5, :dry_condition6, :dry_note)
  end
end
