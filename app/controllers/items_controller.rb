class ItemsController < ApplicationController
  respond_to :html, :json

  def index
    @items = Item.all
    @tags = ["Toy", "Car", "Kitchen", "Food"]
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    respond_with @item, :location => root_path
  end

  def tag
    @items = Item.where(tag: params[:tag])
    @tags = ["Toy", "Car", "Kitchen", "Food"]
  end

  private

  def item_params
    params.require(:item).permit(:title, :description)
  end
end
