class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @genres = Genre.all
    @item   = Item.all
  end

  def create
    @item = Item.new(params[:id])
    if @item.save
      redirect_to admin_item_path(@item.id)
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @genres = Genre.all
    @item   = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admin_item_path(item.id)
    else
      render :edit
    end
  end
end
