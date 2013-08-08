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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130727171708) do

  create_table "assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "assignments", ["role_id"], :name => "index_assignments_on_role_id"
  add_index "assignments", ["user_id"], :name => "index_assignments_on_user_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "centers", :force => true do |t|
    t.string  "name",        :limit => 80
    t.integer "regional_id"
    t.date    "created_at"
    t.date    "updated_at"
    t.boolean "status",                    :default => true
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cities", ["region_id"], :name => "index_cities_on_region_id"

  create_table "clients", :force => true do |t|
    t.string   "identification"
    t.string   "name"
    t.string   "attendant"
    t.string   "mail"
    t.string   "phone"
    t.string   "cell"
    t.integer  "city_id"
    t.integer  "doc_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "clients", ["city_id"], :name => "index_clients_on_city_id"
  add_index "clients", ["doc_id"], :name => "index_clients_on_doc_id"

  create_table "conditions", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "consume_garments", :force => true do |t|
    t.integer  "input_id"
    t.integer  "unity_id"
    t.float    "cost"
    t.float    "quantity_consume"
    t.integer  "garment_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "consume_garments", ["garment_id"], :name => "index_consume_garments_on_garment_id"
  add_index "consume_garments", ["input_id"], :name => "index_consume_garments_on_input_id"
  add_index "consume_garments", ["unity_id"], :name => "index_consume_garments_on_unity_id"

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "docs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "donations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "garment_id"
    t.integer  "amount"
    t.string   "description"
    t.string   "date"
    t.string   "justification"
    t.integer  "receiver"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "garments", :force => true do |t|
    t.string   "name"
    t.string   "reference"
    t.string   "code"
    t.string   "gender",      :limit => 1
    t.integer  "type_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "stock"
    t.integer  "store"
    t.float    "stock_price"
  end

  add_index "garments", ["type_id"], :name => "index_garments_on_type_id"

  create_table "inputs", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "category_id"
    t.float    "unit_cost"
    t.float    "meter_cost"
    t.float    "total_cost"
    t.integer  "unity_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "inputs", ["category_id"], :name => "index_inputs_on_category_id"
  add_index "inputs", ["unity_id"], :name => "index_inputs_on_unity_id"

  create_table "occupations", :force => true do |t|
    t.string "name",       :limit => 60
    t.date   "created_at"
    t.date   "updated_at"
  end

  create_table "preproduction_costs", :force => true do |t|
    t.float    "plotting"
    t.float    "perforated_paper"
    t.float    "plastic"
    t.float    "labeling"
    t.float    "printing"
    t.integer  "production_order_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.float    "cost"
  end

  create_table "procedures", :force => true do |t|
    t.string   "embroidery_delivery"
    t.string   "embroidery_real"
    t.string   "embroidery_end"
    t.string   "embroidery_attendant"
    t.string   "print_delivery"
    t.string   "print_real"
    t.string   "print_end"
    t.string   "print_attendant"
    t.string   "cutting_delivery"
    t.string   "cutting_real"
    t.string   "cutting_end"
    t.string   "cutting_attendant"
    t.string   "outline_delivery"
    t.string   "outline_real"
    t.string   "outline_end"
    t.string   "outline_attendant"
    t.string   "assembly_delivery"
    t.string   "assembly_real"
    t.string   "assembly_end"
    t.string   "assembly_attendant"
    t.string   "washing_delivery"
    t.string   "washing_real"
    t.string   "washing_end"
    t.string   "washing_attendant"
    t.string   "tinte_delivery"
    t.string   "tinte_real"
    t.string   "tinte_end"
    t.string   "tinte_attendant"
    t.string   "labeled_delivery"
    t.string   "labeled_real"
    t.string   "labeled_end"
    t.string   "labeled_attendant"
    t.string   "stock_delivery"
    t.string   "stock_real"
    t.string   "stock_end"
    t.string   "stock_attendant"
    t.string   "store_delivery"
    t.string   "store_real"
    t.string   "store_end"
    t.string   "store_attendant"
    t.integer  "production_order_id"
    t.integer  "condition_id"
    t.integer  "embroidery_amount"
    t.integer  "print_amount"
    t.integer  "cutting_amount"
    t.integer  "outline_amount"
    t.integer  "assembly_amount"
    t.integer  "washing_amount"
    t.integer  "tinte_amount"
    t.integer  "labeled_amount"
    t.integer  "stock_amount"
    t.integer  "store_amount"
    t.integer  "embroidery_month"
    t.integer  "print_month"
    t.integer  "cutting_month"
    t.integer  "outline_month"
    t.integer  "assembly_month"
    t.integer  "washing_month"
    t.integer  "tinte_month"
    t.integer  "labeled_month"
    t.integer  "stock_month"
    t.integer  "store_month"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "production_orders", :force => true do |t|
    t.string   "programing_date"
    t.integer  "client_id"
    t.integer  "op"
    t.integer  "garment_id"
    t.integer  "programed_amount"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "productions", :force => true do |t|
    t.integer  "garment_id"
    t.string   "date_in"
    t.integer  "amount_in"
    t.string   "date_out"
    t.integer  "amount_out"
    t.integer  "remaining"
    t.integer  "a_amount"
    t.integer  "b_amount"
    t.integer  "user_id"
    t.integer  "preparation_days"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "month"
  end

  create_table "purchase_descriptions", :force => true do |t|
    t.integer  "purchase_id"
    t.integer  "input_id"
    t.integer  "amount"
    t.float    "total_value"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "purchases", :force => true do |t|
    t.integer  "supplier_id"
    t.string   "date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "receipt_descriptions", :force => true do |t|
    t.integer  "amount"
    t.integer  "garment_id"
    t.float    "unity_value"
    t.float    "total_value"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "receipt_header_id"
  end

  create_table "receipt_headers", :force => true do |t|
    t.string   "client"
    t.string   "adress"
    t.string   "identification"
    t.string   "phone"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "city_id"
    t.integer  "user_id"
    t.string   "consecutive",    :limit => nil
  end

  create_table "regionals", :force => true do |t|
    t.string "name",       :limit => 80
    t.string "director",   :limit => 80
    t.string "phone",      :limit => 60
    t.string "ip",         :limit => 10
    t.date   "created_at"
    t.date   "updated_at"
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "regions", ["country_id"], :name => "index_regions_on_country_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.integer  "doc_id"
    t.string   "identification"
    t.string   "social_reason"
    t.string   "responsible"
    t.string   "ocupation"
    t.string   "adress"
    t.string   "phone"
    t.string   "cell"
    t.integer  "city_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "unities", :force => true do |t|
    t.string   "name"
    t.string   "initials",   :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string  "email",                           :limit => 80
    t.string  "name",                            :limit => 80
    t.string  "phone",                           :limit => 20
    t.string  "mobile",                          :limit => 20
    t.string  "ip",                              :limit => 20
    t.string  "location",                        :limit => 80
    t.string  "foto_file_name",                  :limit => 80
    t.string  "foto_content_type",               :limit => 80
    t.integer "foto_file_size"
    t.date    "foto_updated_at"
    t.string  "crypted_password",                :limit => 100
    t.string  "salt",                            :limit => 80
    t.string  "center_name",                     :limit => 80
    t.date    "created_at"
    t.date    "updated_at"
    t.integer "center_id"
    t.integer "occupation_id"
    t.string  "remember_me_token",               :limit => 80
    t.date    "remember_me_token_expires_at"
    t.string  "activation_state",                :limit => 20
    t.string  "activation_token",                :limit => 80
    t.date    "activation_token_expires_at"
    t.string  "reset_password_token",            :limit => 80
    t.date    "reset_password_token_expires_at"
    t.date    "reset_password_email_sent_at"
    t.string  "role",                            :limit => 40
  end

end
