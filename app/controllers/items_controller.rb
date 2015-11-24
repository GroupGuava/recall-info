class ItemsController < ApplicationController
  respond_to :html, :json

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    respond_with @item, :location => root_path
  end

  private

  def item_params
    params.require(:item).permit(:title, :description)
  end
end
