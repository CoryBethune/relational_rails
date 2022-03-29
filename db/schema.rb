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

ActiveRecord::Schema.define(version: 2022_03_29_003723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_studios", force: :cascade do |t|
    t.string "name"
    t.boolean "still_active"
    t.integer "game_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.boolean "still_in_production"
    t.integer "hours_of_gameplay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_studio_id"
    t.index ["game_studio_id"], name: "index_games_on_game_studio_id"
  end

  add_foreign_key "games", "game_studios"
end
