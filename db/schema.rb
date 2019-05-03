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

ActiveRecord::Schema.define(version: 2019_04_30_142156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "email", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.datetime "date" #ちゃんとdiaryに紐付けるなら不要
    t.text "article"
    t.bigint "account_id"
    t.bigint "diary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "items_id"
    t.index ["account_id"], name: "index_articles_on_account_id"
    t.index ["diary_id"], name: "index_articles_on_diary_id"
    t.index ["items_id"], name: "index_articles_on_items_id"
  end

  create_table "comments", force: :cascade do |t|
    t.datetime "date"
    t.text "comment"
    t.bigint "account_id"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_comments_on_account_id"
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "comments_of_comments", force: :cascade do |t|
    t.datetime "date"
    t.text "comment"
    t.bigint "account_id"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_comments_of_comments_on_account_id"
    t.index ["comment_id"], name: "index_comments_of_comments_on_comment_id"
  end

  create_table "diaries", force: :cascade do |t|
    t.datetime "date"
    t.bigint "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_diaries_on_account_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "item_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "articles", "accounts"
  add_foreign_key "articles", "diaries"
  add_foreign_key "comments", "accounts"
  add_foreign_key "comments", "articles"
  add_foreign_key "comments_of_comments", "accounts"
  add_foreign_key "comments_of_comments", "comments"
  add_foreign_key "diaries", "accounts"
end
