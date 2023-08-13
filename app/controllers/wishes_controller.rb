class WishesController < ApplicationController
  def new
    @wish = Wish.new
  end
  
  def index
    @wishes = Wish.all
  end

  def show
    @wish = Wish.find(params[:id])
  end

  def create
    wish = Wish.new(wish_params)
    wish.save
    redirect_to wishes_path
  end

  def destroy
    wish = Wish.find(params[:id])
    wish.destroy
    redirect_to wishes_path
  end

  def edit
    @wish = Wish.find(params[:id])
  end

  def update
    wish = Wish.find(params[:id])
    if wish.update(wish_params)
      redirect_to wishes_path
    else
      render 'edit'
    end
  end
    

  private
  def wish_params
    params.require(:wish).permit(:context, :writer)
  end
end
