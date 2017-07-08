class AddColomnToRakutenRecipe < ActiveRecord::Migration[5.0]
  def change
    change_table(:rakuten_recipes) do |t|
      t.integer :category, default: 0, null: false, limit: 1
    end
  end
end
