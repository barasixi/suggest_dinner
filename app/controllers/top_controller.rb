class TopController < ApplicationController
  def index
    @test = RakutenRecipeApi.get_recipes
  end
end
