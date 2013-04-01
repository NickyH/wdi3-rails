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

ActiveRecord::Schema.define(:version => 20130315181108) do

  create_table "administrators", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "role"
    t.string   "ssn"
    t.string   "tel"
  end

  create_table "subscribers", :force => true do |t|
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "tagline"
    t.string   "bio"
    t.string   "preferences"
    t.string   "bodytype"
    t.string   "location"
    t.string   "status"
    t.string   "ethnicity"
    t.string   "gender"
    t.integer  "age"
    t.string   "occupation"
    t.string   "interests"
    t.string   "political"
    t.string   "religious"
    t.string   "education"
    t.decimal  "income"
    t.integer  "subscription_id"
    t.date     "expires"
  end

  create_table "subscriptions", :force => true do |t|
    t.string   "plan"
    t.integer  "duration"
    t.decimal  "cost"
    t.integer  "no_of_photos"
    t.integer  "no_of_texts"
    t.integer  "no_of_emails"
    t.boolean  "a_list"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "userable_id"
    t.string   "userable_type"
  end

end
