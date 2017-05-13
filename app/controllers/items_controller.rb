class ItemsController < ApplicationController
  def create
    @item = current_user.items.create(item_params)
    if @item.save
      flash[:notice] = "You just made the list, #{@item.name}!"
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    @user = User.find(params[:id])
    
    
    if @item.destroy
      flash[:notice] = "You have successfully deleted '#{@item.name}'."
      redirect_to user_path
    else
      flash.now[:alert] = "Unable to process your request..Try again later."
      redirect_to user_path
    end
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
end
