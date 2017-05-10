class ItemsController < ApplicationController
  def create
    @item = current_user.items.create(item_params)
    if @item.save
      redirect_to users_show_path
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    @user = item.user
    
    
    if @item.destroy
      flash[:notice] = "You have successfully deleted #{@item.name}."
      redirect_to users_show_path
    else
      flash.now[:alert] = "Unable to process your request..Try again later."
      redirect_to users_show_path
    end
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
end
