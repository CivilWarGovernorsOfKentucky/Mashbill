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

ActiveRecord::Schema.define(version: 20170328171905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pg_trgm"

  create_table "annotations", force: :cascade do |t|
    t.integer  "document_id"
    t.string   "verbatim"
    t.integer  "user_id"
    t.integer  "entity_id"
    t.date     "hypothesis_date"
    t.string   "hypothesis_annotation_id"
    t.string   "hypothesis_user"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "prefix"
    t.string   "suffix"
    t.string   "start_container"
  end

  add_index "annotations", ["document_id"], name: "index_annotations_on_document_id", using: :btree
  add_index "annotations", ["entity_id"], name: "index_annotations_on_entity_id", using: :btree
  add_index "annotations", ["user_id"], name: "index_annotations_on_user_id", using: :btree

  create_table "deeds", force: :cascade do |t|
    t.string   "deed_type"
    t.integer  "user_id"
    t.integer  "document_id"
    t.integer  "entity_id"
    t.integer  "relationship_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "deeds", ["document_id"], name: "index_deeds_on_document_id", using: :btree
  add_index "deeds", ["entity_id"], name: "index_deeds_on_entity_id", using: :btree
  add_index "deeds", ["relationship_id"], name: "index_deeds_on_relationship_id", using: :btree
  add_index "deeds", ["user_id"], name: "index_deeds_on_user_id", using: :btree

  create_table "documents", force: :cascade do |t|
    t.string   "cwgk_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.boolean  "completed"
    t.boolean  "needs_review"
  end

  create_table "entities", force: :cascade do |t|
    t.string   "name"
    t.string   "entity_type"
    t.text     "biography"
    t.text     "bibliography"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ref_id"
    t.string   "gender"
    t.decimal  "lat",           precision: 10, scale: 6
    t.decimal  "long",          precision: 10, scale: 6
    t.string   "disambiguator"
    t.string   "birth_date"
    t.string   "death_date"
  end

  add_index "entities", ["user_id"], name: "index_entities_on_user_id", using: :btree

  create_table "entities_race_descriptions", id: false, force: :cascade do |t|
    t.integer "entity_id",           null: false
    t.integer "race_description_id", null: false
  end

  add_index "entities_race_descriptions", ["entity_id", "race_description_id"], name: "entity_race_index", using: :btree
  add_index "entities_race_descriptions", ["race_description_id"], name: "index_entities_race_descriptions_on_race_description_id", using: :btree

  create_table "race_descriptions", force: :cascade do |t|
    t.string   "race_description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "entity_1_id"
    t.integer  "entity_2_id"
    t.string   "relationship_type"
    t.integer  "user_id"
    t.text     "citation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "document_id"
  end

  add_index "relationships", ["document_id"], name: "index_relationships_on_document_id", using: :btree
  add_index "relationships", ["entity_1_id"], name: "index_relationships_on_entity_1_id", using: :btree
  add_index "relationships", ["entity_2_id"], name: "index_relationships_on_entity_2_id", using: :btree
  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "hypothesis_user"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "deeds", "documents"
  add_foreign_key "deeds", "entities"
  add_foreign_key "deeds", "relationships"
  add_foreign_key "deeds", "users"
  add_foreign_key "relationships", "documents"
end
