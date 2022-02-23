class Public::ItemsController < ApplicationController
  def index
    @items  = Item.page(params[:page]).per(10)
    @genre  = Genre.all
  end

  def show
    @item   = Item.find(params[:id])
    @genres = Genre.all
  end

  private
  
  def item_params
    params.require(:item).permit(:genre_id, :name, :image, :introduction, :price, :is_active, :created_at, :updated_at)
  end
end
