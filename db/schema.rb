# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140731014613) do

  create_table "animal_pictures", force: true do |t|
    t.string "title"
    t.string "file_name", null: false
    t.text   "caption"
  end

  create_table "arrivals", force: true do |t|
    t.text     "uri"
    t.string   "ip"
    t.string   "user_agent"
    t.string   "referer"
    t.integer  "client_id"
    t.integer  "traffic_source_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "arrivals", ["client_id"], name: "index_arrivals_on_client_id", using: :btree
  add_index "arrivals", ["created_at"], name: "index_arrivals_on_created_at", using: :btree
  add_index "arrivals", ["traffic_source_id"], name: "index_arrivals_on_traffic_source_id", using: :btree
  add_index "arrivals", ["updated_at"], name: "index_arrivals_on_updated_at", using: :btree

  create_table "categories", force: true do |t|
    t.string "name", null: false
  end

  add_index "categories", ["name"], name: "index_categories_on_name", unique: true, using: :btree

  create_table "celeb_headline_categories", force: true do |t|
    t.integer "category_id",       null: false
    t.integer "celeb_headline_id", null: false
  end

  add_index "celeb_headline_categories", ["category_id"], name: "index_celeb_headline_categories_on_category_id", using: :btree
  add_index "celeb_headline_categories", ["celeb_headline_id"], name: "index_celeb_headline_categories_on_celeb_headline_id", using: :btree

  create_table "celeb_headlines", force: true do |t|
    t.text     "title",           null: false
    t.text     "url",             null: false
    t.datetime "posted_at",       null: false
    t.string   "source",          null: false
    t.string   "hashed_headline", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "celeb_headlines", ["created_at"], name: "index_celeb_headlines_on_created_at", using: :btree
  add_index "celeb_headlines", ["hashed_headline"], name: "index_celeb_headlines_on_hashed_headline", unique: true, using: :btree
  add_index "celeb_headlines", ["source"], name: "index_celeb_headlines_on_source", using: :btree
  add_index "celeb_headlines", ["updated_at"], name: "index_celeb_headlines_on_updated_at", using: :btree

  create_table "clients", force: true do |t|
    t.string "name"
    t.string "host_name"
    t.string "title"
    t.string "view_path"
  end

  create_table "headline_clicks", force: true do |t|
    t.integer  "arrival_id",        null: false
    t.integer  "celeb_headline_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "headline_clicks", ["arrival_id"], name: "index_headline_clicks_on_arrival_id", using: :btree
  add_index "headline_clicks", ["celeb_headline_id"], name: "index_headline_clicks_on_celeb_headline_id", using: :btree
  add_index "headline_clicks", ["created_at"], name: "index_headline_clicks_on_created_at", using: :btree

  create_table "pageviews", force: true do |t|
    t.string   "uri"
    t.integer  "arrival_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pageviews", ["arrival_id"], name: "index_pageviews_on_arrival_id", using: :btree
  add_index "pageviews", ["created_at"], name: "index_pageviews_on_created_at", using: :btree
  add_index "pageviews", ["updated_at"], name: "index_pageviews_on_updated_at", using: :btree
  add_index "pageviews", ["uri"], name: "index_pageviews_on_uri", using: :btree

  create_table "traffic_sources", force: true do |t|
    t.string "name"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["created_at"], name: "index_users_on_created_at", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["updated_at"], name: "index_users_on_updated_at", using: :btree

end
