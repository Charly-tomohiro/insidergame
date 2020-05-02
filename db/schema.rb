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

ActiveRecord::Schema.define(version: 20200431112324) do

  create_table "rooms", force: :cascade do |t|
    t.string "User01Name", null: false
    t.string "User02Name", null: false
    t.string "User03Name", null: false
    t.string "User04Name", null: false
    t.string "User05Name"
    t.string "User06Name"
    t.string "User07Name"
    t.string "User08Name"
    t.string "User01Role", default: "User01Role"
    t.string "User02Role", default: "User02Role"
    t.string "User03Role", default: "User03Role"
    t.string "User04Role", default: "User04Role"
    t.string "User05Role", default: "User05Role"
    t.string "User06Role", default: "User06Role"
    t.string "User07Role", default: "User07Role"
    t.string "User08Role", default: "User08Role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theme_to_words", force: :cascade do |t|
    t.integer "theme_id", null: false
    t.integer "word_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theme_id"], name: "index_theme_to_words_on_theme_id"
    t.index ["word_id"], name: "index_theme_to_words_on_word_id"
  end

  create_table "themes", force: :cascade do |t|
    t.integer "room_id", null: false
    t.string "Title", null: false
    t.string "Insider", default: "Insider", null: false
    t.string "Master", default: "Master", null: false
    t.string "Normal01", default: "Normal", null: false
    t.string "Normal02", default: "Normal"
    t.string "Normal03", default: "Normal"
    t.string "Normal04", default: "Normal"
    t.string "Normal05", default: "Normal"
    t.string "Normal06", default: "Normal"
    t.string "Fase01Answer"
    t.string "Answer01"
    t.string "Answer02"
    t.string "Answer03"
    t.string "Answer04"
    t.string "Answer05"
    t.string "Answer06"
    t.string "Answer07"
    t.string "Answer08"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Fase01Time"
    t.integer "Nop"
    t.index ["room_id"], name: "index_themes_on_room_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "Word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
