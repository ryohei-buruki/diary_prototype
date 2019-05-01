class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    redirect_to items_path
  end

  def destroy
  end

  private

  def item_params
    params.require(:account).permit(:item_name)
  end
end
