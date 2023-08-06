class WishesController < ApplicationController
  def index
    @wishes = Wish.all
  end

#   def show
#     @wish = Wish.find(params[:id])
#   end

#   def create
#     @wish = Wish.new()
#   end
end
