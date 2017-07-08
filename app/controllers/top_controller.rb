class TopController < ApplicationController
  def index
    @test = RakutenRecipeApi.get_recipes

    p @test
  end
end
