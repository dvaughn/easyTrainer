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

ActiveRecord::Schema.define(:version => 20130507183940) do

  create_table "athletes", :force => true do |t|
    t.string  "firstname"
    t.string  "lastname"
    t.string  "email"
    t.string  "sport"
    t.integer "height"
    t.integer "weight"
    t.string  "hometown"
    t.string  "status"
    t.integer "trainer_id"
  end

  create_table "bodyparts", :force => true do |t|
    t.string "name"
  end

  create_table "exercises", :force => true do |t|
    t.string  "name"
    t.integer "week1sets"
    t.integer "week1reps"
    t.integer "week2sets"
    t.integer "week2reps"
    t.integer "week3sets"
    t.integer "week3reps"
    t.integer "week4sets"
    t.integer "week4reps"
    t.integer "week5sets"
    t.integer "week5reps"
    t.string  "difficulty"
    t.string  "bodypart"
    t.integer "workout_id"
  end

  create_table "injuries", :force => true do |t|
    t.string   "name"
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.datetime "date"
    t.text     "overview"
    t.integer  "athlete_id"
  end

  create_table "notes", :force => true do |t|
    t.text     "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "athlete_id"
  end

  create_table "texercises", :force => true do |t|
    t.string  "name"
    t.string  "difficulty"
    t.integer "bodypart_id"
  end

  create_table "trainers", :force => true do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

  create_table "workouts", :force => true do |t|
    t.string  "name"
    t.integer "athlete_id"
  end

end
