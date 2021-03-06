# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170708062448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rakuten_recipes", force: :cascade do |t|
    t.integer  "recipeId"
    t.string   "recipeTitle"
    t.string   "recipeUrl"
    t.string   "foodImageUrl"
    t.string   "mediumImageUrl"
    t.string   "smallImageUrl"
    t.integer  "pickup"
    t.integer  "shop"
    t.string   "nickname"
    t.string   "recipeDescription"
    t.string   "recipeMaterial"
    t.string   "recipeIndication"
    t.string   "recipeCost"
    t.string   "rank"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "category",          limit: 2, default: 0, null: false
  end

end
