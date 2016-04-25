class PartiesController < ApplicationController
  def index
    @parties = Party.all
  end

  def show
    @party = Party.find params[:id]
    @orders = Order.all

  end

  def edit
    @party = Party.find params[:id]
    @orders = Order.all
  end

  def new
    @party = Party.new
    @users = User.all
  end

  def create
    newone = Party.create party_params
    redirect_to party_path newone.id
  end

  def update
    party = Party.find params[:id]
    party.update party_params
    redirect_to party_path party.id
  end

  def destroy
    Party.destroy params[:id]
    redirect_to party_path
  end

  private

  def party_params
    params.require(:party).permit(:customer_num)
  end
end
