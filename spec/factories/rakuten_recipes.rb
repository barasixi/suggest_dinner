# == Schema Information
#
# Table name: rakuten_recipes
#
#  id                :integer          not null, primary key
#  recipeId          :integer
#  recipeTitle       :string
#  recipeUrl         :string
#  foodImageUrl      :string
#  mediumImageUrl    :string
#  smallImageUrl     :string
#  pickup            :integer
#  shop              :integer
#  nickname          :string
#  recipeDescription :string
#  recipeMaterial    :string
#  recipeIndication  :string
#  recipeCost        :string
#  rank              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  category          :integer          default(0), not null
#

FactoryGirl.define do
  factory :rakuten_recipe do
    
  end
end
