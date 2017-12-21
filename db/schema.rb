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

ActiveRecord::Schema.define(version: 50161230223318) do

  create_table "dc_disciplines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.date     "date_discipline"
    t.integer  "employee_id"
    t.string   "discipline_by"
    t.integer  "dc_level_id"
    t.integer  "dc_stream_id"
    t.text     "infraction_description", limit: 65535
    t.text     "dc_action",              limit: 65535
    t.text     "dc_comment",             limit: 65535
    t.text     "output",                 limit: 65535
    t.integer  "sort_order"
    t.integer  "active_status"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["dc_level_id"], name: "index_dc_disciplines_on_dc_level_id", using: :btree
    t.index ["dc_stream_id"], name: "index_dc_disciplines_on_dc_stream_id", using: :btree
    t.index ["employee_id"], name: "index_dc_disciplines_on_employee_id", using: :btree
  end

  create_table "dc_levels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "active_status"
    t.integer  "sort_order"
    t.string   "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dc_streams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "active_status"
    t.integer  "sort_order"
    t.string   "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "clock"
    t.string   "sort"
    t.boolean  "active",     default: true
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["clock", "name"], name: "index_employees_on_clock_and_name", unique: true, using: :btree
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "stf_employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "clocknum"
    t.string   "name"
    t.integer  "active_status"
    t.integer  "sort"
    t.string   "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                       default: "", null: false
    t.string   "encrypted_password",          default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",               default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "name"
    t.integer  "role_id",                     default: 1
    t.integer  "auditor_inMSaccess_reporter"
    t.index ["auditor_inMSaccess_reporter"], name: "index_users_on_auditor_inMSaccess_reporter", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
  end

  add_foreign_key "dc_disciplines", "dc_levels"
  add_foreign_key "dc_disciplines", "dc_streams"
  add_foreign_key "dc_disciplines", "employees"
  add_foreign_key "users", "roles"
end
