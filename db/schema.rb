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

ActiveRecord::Schema.define(version: 20161114195852) do

  create_table "annotations", force: :cascade do |t|
    t.integer  "document_id",              limit: 4
    t.string   "verbatim",                 limit: 255
    t.integer  "user_id",                  limit: 4
    t.integer  "entity_id",                limit: 4
    t.date     "hypothesis_date"
    t.string   "hypothesis_annotation_id", limit: 255
    t.string   "hypothesis_user",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "prefix",                   limit: 255
    t.string   "suffix",                   limit: 255
    t.string   "start_container",          limit: 255
  end

  add_index "annotations", ["document_id"], name: "index_annotations_on_document_id", using: :btree
  add_index "annotations", ["entity_id"], name: "index_annotations_on_entity_id", using: :btree
  add_index "annotations", ["user_id"], name: "index_annotations_on_user_id", using: :btree

  create_table "documents", force: :cascade do |t|
    t.string   "cwgk_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title",      limit: 255
    t.boolean  "completed"
  end

  create_table "entities", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "entity_type",    limit: 255
    t.date     "birth_date"
    t.string   "birth_location", limit: 255
    t.date     "death_date"
    t.string   "death_location", limit: 255
    t.text     "biography",      limit: 65535
    t.text     "bibliography",   limit: 65535
    t.integer  "user_id",        limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ref_id",         limit: 255
    t.string   "gender",         limit: 255
    t.decimal  "lat",                          precision: 10, scale: 6
    t.decimal  "long",                         precision: 10, scale: 6
  end

  add_index "entities", ["user_id"], name: "index_entities_on_user_id", using: :btree

  create_table "entities_race_descriptions", id: false, force: :cascade do |t|
    t.integer "entity_id",           limit: 4, null: false
    t.integer "race_description_id", limit: 4, null: false
  end

  add_index "entities_race_descriptions", ["entity_id", "race_description_id"], name: "entity_race_index", using: :btree
  add_index "entities_race_descriptions", ["race_description_id"], name: "index_entities_race_descriptions_on_race_description_id", using: :btree

  create_table "race_descriptions", force: :cascade do |t|
    t.string   "race_description", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "entity_1_id",       limit: 4
    t.integer  "entity_2_id",       limit: 4
    t.string   "relationship_type", limit: 255
    t.integer  "user_id",           limit: 4
    t.text     "citation",          limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["entity_1_id"], name: "index_relationships_on_entity_1_id", using: :btree
  add_index "relationships", ["entity_2_id"], name: "index_relationships_on_entity_2_id", using: :btree
  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "hypothesis_user",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
