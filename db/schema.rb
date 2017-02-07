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

ActiveRecord::Schema.define(version: 20170206003446) do

  create_table "applications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.integer  "user_id"
    t.integer  "property_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "current_address"
    t.string   "birthday"
    t.string   "identity_type"
    t.string   "identify_number"
    t.integer  "phone_number"
    t.integer  "mobile_number"
    t.string   "cv"
    t.string   "identidy_image"
    t.string   "note"
    t.string   "question_1"
    t.string   "question_2"
    t.string   "question_3"
    t.string   "question_4"
    t.string   "question_5"
    t.string   "question_6"
    t.string   "question_7"
    t.string   "question_8"
    t.string   "open_home_time"
    t.boolean  "landlord_status"
    t.boolean  "tenant_status"
    t.boolean  "offer_status"
    t.index ["property_id"], name: "index_applications_on_property_id", using: :btree
    t.index ["user_id"], name: "index_applications_on_user_id", using: :btree
  end

  create_table "open_home_times", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "property_id"
    t.datetime "time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["property_id"], name: "index_open_home_times_on_property_id", using: :btree
    t.index ["user_id"], name: "index_open_home_times_on_application_id", using: :btree
  end

  create_table "properties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "address"
    t.text     "description",      limit: 65535
    t.string   "publish"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "city"
    t.string   "suburb"
    t.string   "available"
    t.string   "furnishings"
    t.string   "application"
    t.string   "parking"
    t.string   "feature"
    t.string   "priority"
    t.string   "ideal_flatmate"
    t.string   "current_flatmate"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.integer  "floor_area"
    t.boolean  "smokers_allow"
    t.boolean  "pets_allow"
    t.string   "open_home_time"
    t.string   "picture"
    t.string   "tenant_id"
    t.integer  "rent"
    t.string   "list_type"
    t.string   "house_type"
    t.datetime "available_date"
    t.integer  "contract_length"
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "country"
    t.index ["user_id", "created_at"], name: "index_properties_on_user_id_and_created_at", using: :btree
    t.index ["user_id"], name: "index_properties_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "current_address"
    t.string   "birthday"
    t.string   "identity_type"
    t.string   "identify_number"
    t.integer  "phone_number"
    t.integer  "mobile_number"
    t.string   "cv"
    t.string   "identidy_image"
    t.string   "note"
    t.string   "question_1"
    t.string   "question_2"
    t.string   "question_3"
    t.string   "question_4"
    t.string   "question_5"
    t.string   "question_6"
    t.string   "question_7"
    t.string   "question_8"
    t.string   "gender"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
