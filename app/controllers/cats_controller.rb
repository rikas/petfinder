class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update]

  def index
    @cats = Cat.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.save

    redirect_to cats_path
  end

  def edit
  end

  def update
    @cat.update(cat_update_params)

    redirect_to cat_path(@cat)
  end

  private

  def set_cat
    @cat = Cat.find(params[:id])
  end

  def cat_params
    params.require(:cat).permit(:breed, :color, :legs, :description)
  end

  def cat_update_params
    params.require(:cat).permit(:breed, :color, :legs, :description, :claimed)
  end
end
