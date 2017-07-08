class LotteryController < ApplicationController
  def meet
    recipes = RakutenRecipe.get_data(RakutenRecipe.categories[:meet])
    @recipes = recipes.sample(3)
    render :show
  end

  def fish
    recipes = RakutenRecipe.get_data(RakutenRecipe.categories[:fish])
    @recipes = recipes.sample(3)

    render :show
  end

  def vegetable
    recipes = RakutenRecipe.get_data(RakutenRecipe.categories[:vegetable])
    @recipes = recipes.sample(3)

    render :show
  end
end
