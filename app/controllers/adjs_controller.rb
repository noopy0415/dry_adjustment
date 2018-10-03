class AdjsController < ApplicationController
  before_action :authenticate_user!

  def index
    @page = "調整"
    @adjs = Adj.all
    @dries = Dry.all
    @tasks = Task.all
  end

  def new
    @page = "調整登録"
    @adj = Adj.new
    @adj.task_id = params[:format]
    @adj.container_shipment = true
    @adj.bag_shipment = true
    @adj.half_shipment = true
  end

  def create
    @adj = Adj.new(adj_params)
    if @adj.save
      redirect_to adjs_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    @page = "調整修正"
    @adj = Adj.find(params[:id])
  end

  def update
    @adj = Adj.find(params[:id])
    if @adj.update(adj_params)
      redirect_to adjs_path
    else
      render :edit
    end
  end

  def container_shipment
    @adj = Adj.find(params[:id])
    if @adj.update(container_shipment:false)
       redirect_to adjs_path
    else
      render :edit
    end
  end

  def bag_shipment
    @adj = Adj.find(params[:id])
    if @adj.update(bag_shipment:false)
      redirect_to adjs_path
    else
      render :edit
    end
  end

  def half_shipment
    @adj = Adj.find(params[:id])
    if @adj.update(half_shipment:false)
      redirect_to adjs_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def adj_params
    params.require(:adj).permit(:task_id, :trader_id, :container, :container_shipment, :bag, :bag_shipment, :half, :half_shipment, :adj_note)
  end
end
