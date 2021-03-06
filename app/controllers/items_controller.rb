class ItemsController < ApplicationController
  def create
    @item = current_user.items.create(item_params)
    if @item.save
      flash[:notice] = "You just made the list, #{@item.name}!"
      redirect_to user_path(current_user)
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    @user = current_user.items.destroy
    
    
    if @item.destroy
      flash[:notice] = "You have successfully deleted '#{@item.name}'."
      redirect_to user_path(current_user)
    else
      flash.now[:alert] = "Unable to process your request..Try again later."
      redirect_to user_path(current_user)
    end
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
end
