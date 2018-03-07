class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    #debugger
    render :new
    # debugger
  end

  def create
    # debugger
    if Cat.create!(cat_params)
      redirect_to cats_url
    end
  end

  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update_attributes(cat_params)
      redirect_to cats_url
    end
  end

  private

  def cat_params
    params.require(:cat).permit(:birth_date,:color,:name,:sex,:description)
  end
end
