class WishesController < ApplicationController
  def index
    @wishes = Wish.all
  end

  def show
    puts "ああああああああああ"
    @wish = Wish.find(params[:id])
  end

  def create
    wish = Wish.new(wish_params)
    wish.save
    redirect_to wishes_path
  end

  def new
    @wish = Wish.new
  end

  def destroy
    puts "-----------------------------------"
    wish = Wish.find(params[:id])
    wish.destroy
    redirect_to wishes_path
  end

  private
  def wish_params
    params.require(:wish).permit(:context, :writer)
  end
end
