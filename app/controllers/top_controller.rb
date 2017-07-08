class TopController < ApplicationController
  def index
    recipes = RakutenRecipe.get_data(RakutenRecipe.categories[:meet])
    @recipes = recipes.sample(3)
  end
end
