class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]

  def index
    @homes = Home.all
    @furnitures = Furniture.last(8)
    @shops = Shop.last(4)

  end
  
  def show
  end
end
