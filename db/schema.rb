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

ActiveRecord::Schema.define(:version => 20120731063027) do

  create_table "polls", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "edit_link"
    t.string   "poll_link"
  end

  add_index "polls", ["edit_link"], :name => "index_polls_on_edit_link"
  add_index "polls", ["poll_link"], :name => "index_polls_on_poll_link"

  create_table "questions", :force => true do |t|
    t.string   "question"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "poll_id"
  end

  add_index "questions", ["poll_id"], :name => "index_questions_on_poll_id"

end
