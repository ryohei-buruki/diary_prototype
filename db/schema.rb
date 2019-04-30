ActiveRecord::Schema.define(version: 2019_04_30_080208) do

  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "mail", null: false
    t.string "password_digist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.datetime "date"
    t.text "article"
    t.bigint "account_id"
    t.bigint "diary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_articles_on_account_id"
    t.index ["diary_id"], name: "index_articles_on_diary_id"
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

  add_foreign_key "articles", "accounts"
  add_foreign_key "articles", "diaries"
  add_foreign_key "comments", "accounts"
  add_foreign_key "comments", "articles"
  add_foreign_key "comments_of_comments", "accounts"
  add_foreign_key "comments_of_comments", "comments"
  add_foreign_key "diaries", "accounts"
end
