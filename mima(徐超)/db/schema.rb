# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090227072907) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shops_count"
    t.integer  "products_count"
    t.string   "belongs_to"
  end

  add_index "categories", ["name"], :name => "index_categories_on_name"

  create_table "products", :force => true do |t|
    t.integer  "shop_id"
    t.integer  "category_id"
    t.integer  "counts"
    t.string   "name"
    t.string   "added_description"
    t.text     "introduction"
    t.text     "offer_description"
    t.text     "reservation_help"
    t.boolean  "is_recommend",                                                   :default => false
    t.integer  "price",             :limit => 10, :precision => 10, :scale => 0
    t.float    "discount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_parent"
  end

  add_index "products", ["name"], :name => "index_products_on_name"
  add_index "products", ["category_id", "shop_id"], :name => "index_products_on_category_id_and_shop_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "shops", :force => true do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "products_count"
    t.string   "shopname"
    t.string   "surename"
    t.string   "IDcard"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.string   "postcode"
    t.integer  "status"
    t.boolean  "is_recomend",     :default => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_parent"
  end

  add_index "shops", ["shopname"], :name => "index_shops_on_shopname"
  add_index "shops", ["category_id"], :name => "index_shops_on_category_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["username"], :name => "index_users_on_username"

end
