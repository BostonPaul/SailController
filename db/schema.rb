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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110605163410) do

  create_table "boat_types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "boats", :force => true do |t|
    t.integer  "number"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "boat_type_id"
    t.integer  "user_id"
    t.integer  "cloned_from"
  end

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clubs_regatta", :id => false, :force => true do |t|
    t.integer "club_id"
    t.integer "regattum_id"
  end

  add_index "clubs_regatta", ["club_id"], :name => "index_clubs_regatta_on_club_id"
  add_index "clubs_regatta", ["regattum_id"], :name => "index_clubs_regatta_on_regattum_id"

  create_table "clubs_registrations", :id => false, :force => true do |t|
    t.integer "club_id"
    t.integer "registration_id"
  end

  add_index "clubs_registrations", ["club_id"], :name => "index_clubs_registrations_on_club_id"
  add_index "clubs_registrations", ["registration_id"], :name => "index_clubs_registrations_on_registration_id"

  create_table "crew_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crews", :force => true do |t|
    t.integer  "boat_id"
    t.integer  "crew_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "regattum_id"
    t.integer  "cloned_from"
  end

  create_table "equipment", :force => true do |t|
    t.integer  "equipment_type_id"
    t.string   "prod_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "boat_id"
  end

  create_table "equipment_types", :force => true do |t|
    t.string   "ident"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "europe_dinghies", :force => true do |t|
    t.integer  "user_id"
    t.string   "owner_license"
    t.string   "police_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "optimist_dinghies", :force => true do |t|
    t.integer  "user_id"
    t.string   "owner_license"
    t.string   "police_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", :force => true do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "regattum_id"
  end

  create_table "regatta", :force => true do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "boat_id"
    t.integer  "user_id"
    t.integer  "regattum_id"
  end

  create_table "sails", :force => true do |t|
    t.string   "number"
    t.string   "prod_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "boat_id"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "state",                                    :default => "passive"
    t.datetime "deleted_at"
    t.string   "address"
    t.integer  "zipcode"
    t.string   "city"
    t.string   "after_name"
    t.string   "number"
    t.integer  "cloned_from"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
