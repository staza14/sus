# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema[7.0].define(version: 2023_08_29_142610) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_challenge_days", force: :cascade do |t|
    t.boolean "status", default: false
    t.integer "day"
    t.bigint "active_challenge_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["active_challenge_id"], name: "index_active_challenge_days_on_active_challenge_id"
  end

  create_table "active_challenges", force: :cascade do |t|
    t.boolean "completed", default: false
    t.bigint "user_id", null: false
    t.bigint "challenge_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_active_challenges_on_challenge_id"
    t.index ["user_id"], name: "index_active_challenges_on_user_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.text "description"
    t.string "badge"
    t.integer "challenge_score"
    t.string "name"
    t.integer "duration"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "summary"
    t.string "prompt"
  end

  create_table "entries", force: :cascade do |t|
    t.float "food_score"
    t.float "travel_score"
    t.float "home_score"
    t.float "day_score"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "Car_Kms"
    t.float "Cycle_Kms"
    t.float "Public_Transports_Kms"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "friendships", force: :cascade do |t|
    t.boolean "confirmed"
    t.bigint "asker_id", null: false
    t.bigint "receiver_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asker_id"], name: "index_friendships_on_asker_id"
    t.index ["receiver_id"], name: "index_friendships_on_receiver_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.string "image"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.float "overall_score"
    t.float "baseline_stats"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_challenge_days", "active_challenges"
  add_foreign_key "active_challenges", "challenges"
  add_foreign_key "active_challenges", "users"
  add_foreign_key "entries", "users"
  add_foreign_key "friendships", "users", column: "asker_id"
  add_foreign_key "friendships", "users", column: "receiver_id"
  add_foreign_key "posts", "users"
end
