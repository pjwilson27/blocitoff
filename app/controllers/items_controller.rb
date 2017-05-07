class ItemsController < ApplicationController
  def create
    @item = current_user.items.create(item_params)
    if @item.save
      redirect_to users_show_path
    end
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
end
