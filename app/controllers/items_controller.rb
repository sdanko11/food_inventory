class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      flash[:item_created] = "Item Added"
      redirect_to new_item_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :quanity)
  end

end
