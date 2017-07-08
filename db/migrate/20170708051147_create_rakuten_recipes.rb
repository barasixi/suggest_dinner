class CreateRakutenRecipes < ActiveRecord::Migration[5.0]
  def change
# {
#     "recipeId"=>1390015585,
#      "recipeTitle"=>"ご飯がすすむ♪ 豚肉となすの味噌炒め☆",
#      "recipeUrl"=>"https://recipe.rakuten.co.jp/recipe/1390015585/",
#      "foodImageUrl"=>"https://image.space.rakuten.co.jp/d/strg/ctrl/3/b9439a7c2fd591879279d91e61d4fb6b09388f27.92.2.3.2.jpg",
#      "mediumImageUrl"=>"https://image.space.rakuten.co.jp/d/strg/ctrl/3/b9439a7c2fd591879279d91e61d4fb6b09388f27.92.2.3.2.jpg?thum=54",
#      "smallImageUrl"=>"https://image.space.rakuten.co.jp/d/strg/ctrl/3/b9439a7c2fd591879279d91e61d4fb6b09388f27.92.2.3.2.jpg?thum=55",
#      "pickup"=>1,
#      "shop"=>0,
#      "nickname"=>"はなまる子♪",
#      "recipeDescription"=>"ささっと簡単、豚バラ肉と夏野菜の味噌味の炒めものです。　ご飯のおかずに、おつまみにお箸が進みます。",
#      "recipeMaterial"=>[
#         "豚バラ肉",
#          "なす",
#          "ピーマン",
#          "オリーブオイル",
#          "・・調味料",
#          "Ａ・・",
#          "味噌、酒",
#          "砂糖",
#          "しょうゆ"
#     ],
#      "recipeIndication"=>"約10分",
#      "recipeCost"=>"300円前後",
#      "recipePublishday"=>"2013/03/26 16:31:30",
#      "rank"=>"1"
# },
    create_table :rakuten_recipes do |t|
      t.integer :recipeId
      t.string :recipeTitle
      t.string :recipeUrl
      t.string :foodImageUrl
      t.string :mediumImageUrl
      t.string :smallImageUrl
      t.integer :pickup
      t.integer :shop
      t.string :nickname
      t.string :recipeDescription
      t.string :recipeMaterial
      t.string :recipeIndication
      t.string :recipeCost
      t.string :rank
      t.timestamps
    end
  end
end
