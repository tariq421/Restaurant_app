class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def create
    taco = Menu.create dest_params
    redirect_to menu_path taco.id
  end

  def new
    @menu = Menu.new
  end

  def edit
    @menu= Menu.find params[:id]
  end

  def show
    @menu = Menu.find params[:id]
  end

  def update
    menu = Menu.find params[:id]
    menu.update menu_params
    redirect_to menu_path menu.id
  end

  def destroy
    Menu.destroy params[:id]
    redirect_to menus_path
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :price)
  end

end
