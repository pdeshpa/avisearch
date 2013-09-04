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

ActiveRecord::Schema.define(version: 20130904070422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bird_behaviours", force: true do |t|
    t.text     "general"
    t.text     "range_and_habitat"
    t.text     "breeding_and_nesting"
    t.text     "foraging_and_feeding"
    t.text     "vocalization"
    t.text     "similar_species"
    t.text     "breeding_location"
    t.string   "breeding_type"
    t.string   "egg_color"
    t.integer  "number_of_eggs"
    t.integer  "incubation_days"
    t.string   "egg_incubator"
    t.string   "nesting_material"
    t.string   "migration"
    t.integer  "bird_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bird_bodies", force: true do |t|
    t.string   "shape"
    t.string   "size"
    t.string   "color_primary"
    t.string   "color_secondary"
    t.string   "under_part_color"
    t.string   "upper_part_color"
    t.string   "back_pattern"
    t.string   "belly_pattern"
    t.string   "breast_pattern"
    t.integer  "bird_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bird_flights", force: true do |t|
    t.string   "flight_pattern"
    t.string   "wing_span"
    t.string   "wing_shape"
    t.string   "tail_shape"
    t.string   "tail_pattern"
    t.string   "upper_tail"
    t.string   "under_tail"
    t.string   "leg_color"
    t.integer  "bird_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bird_heads", force: true do |t|
    t.string   "bill_shape"
    t.string   "bill_size"
    t.string   "bill_color"
    t.string   "eye_color"
    t.string   "head_pattern"
    t.string   "crown_color"
    t.string   "forehead_color"
    t.string   "nape_color"
    t.string   "throat_color"
    t.string   "cere_color"
    t.integer  "bird_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "birds", force: true do |t|
    t.string   "common_english_name"
    t.string   "scientific_name"
    t.string   "family"
    t.string   "order"
    t.string   "marathi_name"
    t.string   "sanskrit_name"
    t.text     "sanskrit_name_description"
    t.text     "scientific_name_etymology"
    t.string   "iucn_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
