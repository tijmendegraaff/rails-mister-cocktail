class CocktailsController < ApplicationController
  def index

  end

  def show
  end

  def new

  end

  def create
    @cocktail = Cocktail.new
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
