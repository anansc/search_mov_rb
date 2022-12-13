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

ActiveRecord::Schema[7.0].define(version: 2022_12_06_041950) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advertisements", force: :cascade do |t|
    t.integer "owner_id_id"
    t.integer "property_id_id"
    t.integer "advertisements_type"
    t.date "init_rent_period"
    t.date "end_rent_period"
    t.integer "rating_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id_id"], name: "index_advertisements_on_owner_id_id"
    t.index ["property_id_id"], name: "index_advertisements_on_property_id_id"
    t.index ["rating_id_id"], name: "index_advertisements_on_rating_id_id"
  end

  create_table "agenda_requests", force: :cascade do |t|
    t.integer "agenda_id_id"
    t.integer "user_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agenda_id_id"], name: "index_agenda_requests_on_agenda_id_id"
    t.index ["user_id_id"], name: "index_agenda_requests_on_user_id_id"
  end

  create_table "agendas", force: :cascade do |t|
    t.date "init_date"
    t.date "end_date"
    t.integer "property_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id_id"], name: "index_agendas_on_property_id_id"
  end

  create_table "chats", force: :cascade do |t|
    t.integer "user_locator_id_id"
    t.integer "user_owner_id_id"
    t.string "chat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_locator_id_id"], name: "index_chats_on_user_locator_id_id"
    t.index ["user_owner_id_id"], name: "index_chats_on_user_owner_id_id"
  end

  create_table "properties", force: :cascade do |t|
    t.integer "owner_id_id"
    t.integer "properties_type"
    t.integer "rooms"
    t.integer "bathroom"
    t.string "size"
    t.boolean "furnished"
    t.string "sell_price"
    t.string "rent_price"
    t.string "state"
    t.string "city"
    t.string "bairro"
    t.string "cep"
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id_id"], name: "index_properties_on_owner_id_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "owner_id_id"
    t.string "comment"
    t.float "rate"
    t.integer "advertisements_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["advertisements_id_id"], name: "index_ratings_on_advertisements_id_id"
    t.index ["owner_id_id"], name: "index_ratings_on_owner_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "email"
    t.date "birthday"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
