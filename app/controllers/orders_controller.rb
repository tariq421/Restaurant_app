class OrdersController < ApplicationController
  def index
      @orders = Order.all
      @parties = Party.where(user_id:current_user.id)
    end

    def edit
      @order = Order.find params[:id]
      @parties = Party.all
      @menus = Menu.all
    end

    def show
      @order = Order.find params[:id]
      @parties = Party.all
    end


    def new
      @order = Order.new
      @parties = Party.all
      @menus = Menu.all
    end

    def create
      order_params[:menus].each do |menu_id|
        Order.create({ :party_id => order_params[:party_id], :menu_id => menu_id })
      end

      # new_order = Order.create order_params

      redirect_to party_path(params[:order][:party_id])

    end

    def update
      order = Order.find params[:id]
      order.update order_params
      redirect_to order_path order.id
    end

    def destroy
      Order.destroy params[:id]
      redirect_to orders_path
    end

    private

    def order_params
      params.require(:order).permit(:party_id, :menus => [])
    end
end
