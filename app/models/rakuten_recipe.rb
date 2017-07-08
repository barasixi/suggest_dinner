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
#

class RakutenRecipe < ApplicationRecord

  enum category: { invalid_param: 0, meet: 1, fish: 2, vegetable: 3 }

  def self.random_label
    labels = ["handmade", "chance", "latest", "quality"]
    label = labels.sample
    label += ".png"
  end

  def self.get_data(category)
    RakutenRecipe.where(category: category)
  end

  def self.build_from_api(json)

    new(json.extract!(*column_names))
    # image_urls = json.delete(:image_url)
    # code = json.delete(:code)
    # code[:category_name_l].keep_if{|c| c.is_a?(String) }
    # code[:category_name_l].delete("居酒屋")
    # code[:category_name_l].delete("ダイニングバー・バー・ビアホール")
    # code[:category_name_l].delete("ビストロ")

    # json[:gid] = json.delete(:id)
    # json[:image_url_1] = image_urls[:shop_image1]
    # json[:image_url_2] = image_urls[:shop_image2]
    # json[:areaname_s] = code[:areaname_s]
    # json[:category_name_l] = code[:category_name_l].join(",")
    # new(json.extract!(*column_names))
  end
end
