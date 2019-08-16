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

ActiveRecord::Schema.define(version: 2019_08_16_124725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catchers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.date "birth_date"
    t.string "gender"
    t.string "occupation"
    t.text "hobbies"
    t.string "past_destinations"
    t.string "photo"
    t.index ["email"], name: "index_catchers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_catchers_on_reset_password_token", unique: true
  end

  create_table "conversations", force: :cascade do |t|
    t.boolean "friendship"
    t.integer "sender_id"
    t.integer "reciever_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string "location"
    t.integer "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "catcher_id"
    t.bigint "destination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["catcher_id"], name: "index_favourites_on_catcher_id"
    t.index ["destination_id"], name: "index_favourites_on_destination_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.boolean "joined"
    t.bigint "trip_id"
    t.bigint "catcher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["catcher_id"], name: "index_invitations_on_catcher_id"
    t.index ["trip_id"], name: "index_invitations_on_trip_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "catcher_id"
    t.bigint "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["catcher_id"], name: "index_messages_on_catcher_id"
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "photo"
    t.bigint "catcher_id"
    t.bigint "story_id"
    t.bigint "destination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["catcher_id"], name: "index_pictures_on_catcher_id"
    t.index ["destination_id"], name: "index_pictures_on_destination_id"
    t.index ["story_id"], name: "index_pictures_on_story_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "rating"
    t.bigint "catcher_id"
    t.bigint "destination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["catcher_id"], name: "index_stories_on_catcher_id"
    t.index ["destination_id"], name: "index_stories_on_destination_id"
  end

  create_table "trips", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "destination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_trips_on_destination_id"
  end

  add_foreign_key "favourites", "catchers"
  add_foreign_key "favourites", "destinations"
  add_foreign_key "invitations", "catchers"
  add_foreign_key "invitations", "trips"
  add_foreign_key "messages", "catchers"
  add_foreign_key "messages", "conversations"
  add_foreign_key "pictures", "catchers"
  add_foreign_key "pictures", "destinations"
  add_foreign_key "pictures", "stories"
  add_foreign_key "stories", "catchers"
  add_foreign_key "stories", "destinations"
  add_foreign_key "trips", "destinations"
end
