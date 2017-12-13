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

ActiveRecord::Schema.define(version: 50161230223312) do

  create_table "about_incidents_reader", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "info", limit: 65535, null: false
  end

  create_table "about_incidents_reader__history", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "history__language", limit: 2
    t.text     "history__comments", limit: 65535
    t.string   "history__user",     limit: 32
    t.integer  "history__state",                  default: 0
    t.datetime "history__modified"
    t.integer  "id"
    t.integer  "info"
    t.index ["history__modified"], name: "datekeys", using: :btree
    t.index ["id"], name: "prikeys", using: :btree
  end

  create_table "audits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "auditable_id"
    t.string   "auditable_type"
    t.integer  "associated_id"
    t.string   "associated_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "username"
    t.string   "action"
    t.text     "audited_changes", limit: 65535
    t.integer  "version",                       default: 0
    t.string   "comment"
    t.string   "remote_address"
    t.string   "request_uuid"
    t.datetime "created_at"
    t.index ["associated_id", "associated_type"], name: "associated_index", using: :btree
    t.index ["auditable_id", "auditable_type"], name: "auditable_index", using: :btree
    t.index ["created_at"], name: "index_audits_on_created_at", using: :btree
    t.index ["request_uuid"], name: "index_audits_on_request_uuid", using: :btree
    t.index ["user_id", "user_type"], name: "user_index", using: :btree
  end

  create_table "copy_pp_parkingpass", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "clock1",          limit: 8
    t.string "name_full_entpr", limit: 22
    t.string "parking_pass",    limit: 7
    t.string "dept",            limit: 7
    t.string "company",         limit: 28
    t.string "group",           limit: 16
    t.string "status",          limit: 3
    t.string "supervisor",      limit: 39
    t.string "clock_entpr",     limit: 39
  end

  create_table "corrective_actions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.text     "name",             limit: 65535
    t.string   "responsible"
    t.date     "target_date"
    t.date     "actual_date_done"
    t.boolean  "done"
    t.string   "sort_integer"
    t.string   "priority"
    t.integer  "incident_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["incident_id"], name: "index_corrective_actions_on_incident_id", using: :btree
  end

  create_table "dashboard", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
  end

  create_table "dataface__failed_logins", primary_key: "attempt_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "ip_address",      limit: 32, null: false
    t.string  "username",        limit: 32, null: false
    t.integer "time_of_attempt",            null: false
  end

  create_table "dataface__modules", primary_key: "module_name", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "module_version"
  end

  create_table "dataface__mtimes", primary_key: "name", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "mtime"
  end

  create_table "dataface__preferences", primary_key: "pref_id", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username",  limit: 64,  null: false
    t.string "table",     limit: 128, null: false
    t.string "record_id",             null: false
    t.string "key",       limit: 128, null: false
    t.string "value",                 null: false
    t.index ["record_id"], name: "record_id", using: :btree
    t.index ["table"], name: "table", using: :btree
    t.index ["username"], name: "username", using: :btree
  end

  create_table "dataface__record_mtimes", primary_key: "recordhash", id: :string, limit: 32, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "recordid", null: false
    t.integer "mtime",    null: false
  end

  create_table "dataface__version", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "version", default: 0, null: false
  end

  create_table "dc_category", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name",          limit: 99,                                         null: false
    t.integer  "active_status",               default: 1,                          null: false
    t.integer  "sort_order",                  default: 50,                         null: false
    t.text     "comment",       limit: 65535
    t.datetime "createdtime",                 default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updatedtime"
  end

  create_table "dc_disc_type", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name",          limit: 99,                                         null: false
    t.integer  "active_status",                                                    null: false
    t.integer  "sort_order",                                                       null: false
    t.text     "comment",       limit: 65535
    t.datetime "createdtime",                 default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updatedtime"
  end

  create_table "dc_disc_type__history", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "history__language", limit: 2
    t.text     "history__comments", limit: 65535
    t.string   "history__user",     limit: 32
    t.integer  "history__state",                  default: 0
    t.datetime "history__modified"
    t.integer  "id"
    t.string   "name",              limit: 99
    t.integer  "active_status"
    t.integer  "sort_order"
    t.text     "comment",           limit: 65535
    t.datetime "createdtime",                     default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updatedtime"
    t.index ["history__modified"], name: "datekeys", using: :btree
    t.index ["id"], name: "prikeys", using: :btree
  end

  create_table "dc_discipline__history", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "history__language",       limit: 2
    t.text     "history__comments",       limit: 65535
    t.string   "history__user",           limit: 32
    t.integer  "history__state",                        default: 0
    t.datetime "history__modified"
    t.string   "employee",                limit: 99
    t.date     "dated"
    t.string   "disciplineby",            limit: 99
    t.string   "disc_type",               limit: 99
    t.text     "description_of_incident", limit: 65535
    t.text     "action",                  limit: 65535
    t.text     "comment",                 limit: 65535
    t.datetime "createdtime",                           default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updatedtime"
    t.integer  "id"
    t.string   "category",                limit: 99
    t.index ["history__modified"], name: "datekeys", using: :btree
    t.index ["id"], name: "prikeys", using: :btree
  end

  create_table "dc_discipline_off", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date     "dated",                                                                      null: false
    t.string   "employee",                limit: 99,                                         null: false
    t.string   "disciplineby",            limit: 99,                                         null: false
    t.string   "category",                limit: 99,                                         null: false
    t.string   "disc_type",               limit: 99,                                         null: false
    t.text     "description_of_incident", limit: 65535,                                      null: false
    t.text     "action",                  limit: 65535,                                      null: false
    t.text     "comment",                 limit: 65535
    t.datetime "createdtime",                           default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updatedtime"
  end

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

  create_table "inci_assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "asset"
    t.string   "description"
    t.integer  "sort"
    t.integer  "active",      default: 1
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",  default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["asset", "description"], name: "index_assets_on_asset_and_description", unique: true, using: :btree
    t.index ["asset", "description"], name: "index_inci_assets_on_asset_and_description", unique: true, using: :btree
  end

  create_table "incidents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "report_type",                             limit: 987
    t.integer  "employee_id"
    t.string   "name_if_not_in_employees"
    t.string   "contractor_or_visitor"
    t.string   "reported_to"
    t.datetime "reported_at"
    t.datetime "incident_occured"
    t.string   "left_right"
    t.boolean  "dominant"
    t.string   "injured_body_part"
    t.string   "incident_type",                           limit: 987
    t.string   "other_exposure"
    t.integer  "inci_asset_id"
    t.string   "incident_location"
    t.string   "witness1"
    t.string   "witness2"
    t.string   "task_being_done"
    t.boolean  "routine_task"
    t.text     "description_of_incident",                 limit: 65535
    t.string   "treatment",                               limit: 987
    t.text     "description_first_aid",                   limit: 65535
    t.text     "immediate_cause",                         limit: 65535
    t.text     "basic_root_cause",                        limit: 65535
    t.text     "previous_occurrence",                     limit: 65535
    t.string   "working_environment",                     limit: 987
    t.text     "work_environment_details",                limit: 65535
    t.string   "machine_equipment",                       limit: 987
    t.text     "machine_equipment_details",               limit: 65535
    t.text     "addtional_comments",                      limit: 65535
    t.integer  "corrective_action_id"
    t.string   "corrective_actions_implemented_checkbox"
    t.text     "corrective_actions_implemented",          limit: 65535
    t.string   "corrective_actions_effective_checkbox"
    t.text     "corrective_actions_effective",            limit: 65535
    t.text     "other_corrective_comments",               limit: 65535
    t.string   "supervisor"
    t.date     "supervisor_date"
    t.string   "operations_manager"
    t.date     "operations_manager_date"
    t.string   "hse_coordinator"
    t.date     "hse_coordinator_date"
    t.integer  "user_id"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.string   "hr_manager"
    t.string   "status",                                                             collation: "utf8_general_ci"
    t.string   "ohsa_reportable"
    t.float    "length_of_service",                       limit: 24
    t.string   "plant"
    t.date     "return_to_work_date"
    t.index ["corrective_action_id"], name: "index_incidents_on_corrective_action_id", using: :btree
    t.index ["employee_id"], name: "index_incidents_on_employee_id", using: :btree
    t.index ["inci_asset_id"], name: "index_incidents_on_inci_asset_id", using: :btree
    t.index ["user_id"], name: "index_incidents_on_user_id", using: :btree
  end

  create_table "pp_parkingpass", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "clock1",       limit: 8
    t.string   "en_name",      limit: 22
    t.string   "parking_pass", limit: 50
    t.string   "dept",         limit: 7
    t.string   "company",      limit: 28
    t.string   "grouping",     limit: 16
    t.string   "en_status",    limit: 3
    t.string   "supervisor",   limit: 39
    t.string   "en_clock",     limit: 39
    t.datetime "created_at",              null: false
    t.datetime "updated_at"
  end

  create_table "pp_parkingpass__history", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "history__language", limit: 2
    t.text     "history__comments", limit: 65535
    t.string   "history__user",     limit: 32
    t.integer  "history__state",                  default: 0
    t.datetime "history__modified"
    t.integer  "id"
    t.string   "clock1",            limit: 8
    t.string   "name_full_entpr",   limit: 22
    t.string   "parking_pass",      limit: 7
    t.string   "dept",              limit: 7
    t.string   "company",           limit: 28
    t.string   "group",             limit: 16
    t.string   "status",            limit: 3
    t.string   "supervisor",        limit: 39
    t.string   "clock_entpr",       limit: 39
    t.index ["history__modified"], name: "datekeys", using: :btree
    t.index ["id"], name: "prikeys", using: :btree
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stf_assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "assetnum"
    t.string   "description"
    t.integer  "active_status", default: 1
    t.integer  "sort"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",    default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["assetnum", "description"], name: "index_stf_assets_on_assetnum_and_description", unique: true, using: :btree
  end

  create_table "stf_employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.string   "clocknum"
    t.integer  "active_status", default: 1
    t.integer  "sort"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",    default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["clocknum", "name"], name: "index_stf_employees_on_clocknum_and_name", unique: true, using: :btree
  end

  create_table "tr_cells", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",                      null: false
    t.string   "operation",                 null: false
    t.integer  "operationid",               null: false
    t.integer  "active_status", default: 1
    t.integer  "sort"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["name", "operation", "operationid"], name: "name_operation_operationid", unique: true, using: :btree
  end

  create_table "tr_courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.string   "number"
    t.string   "category"
    t.string   "description"
    t.integer  "active_status", default: 1,  null: false
    t.integer  "sort",          default: 51
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "tr_customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",                      null: false
    t.string   "location",                  null: false
    t.integer  "customerid",                null: false
    t.integer  "active_status", default: 1
    t.integer  "sort"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["name", "location", "customerid"], name: "name_location_customerid", unique: true, using: :btree
  end

  create_table "tr_parts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.string   "partnumber"
    t.integer  "active_status", default: 1
    t.integer  "sort"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["name", "partnumber"], name: "index_tr_parts_on_name_and_partnumber", unique: true, using: :btree
  end

  create_table "tr_programs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tr_secondary_course_names", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tr_training_employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.text     "output",                limit: 65535
    t.integer  "tr_training_record_id"
    t.integer  "stf_employee_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["stf_employee_id"], name: "index_tr_training_employees_on_stf_employee_id", using: :btree
    t.index ["tr_training_record_id"], name: "index_tr_training_employees_on_tr_training_record_id", using: :btree
  end

  create_table "tr_training_records", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "tr_course_id"
    t.date     "training_date"
    t.text     "details_of_training",         limit: 65535
    t.float    "hours_trained",               limit: 24
    t.string   "location"
    t.string   "swi"
    t.string   "path_to_training_material"
    t.integer  "tr_type_id"
    t.integer  "tr_customer_id"
    t.integer  "tr_program_id"
    t.integer  "tr_part_id"
    t.integer  "tr_cell_id"
    t.integer  "stf_asset_id"
    t.integer  "user_id"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "plant"
    t.string   "trainer"
    t.integer  "tr_secondary_course_name_id"
    t.string   "title"
    t.index ["stf_asset_id"], name: "index_tr_training_records_on_stf_asset_id", using: :btree
    t.index ["tr_cell_id"], name: "index_tr_training_records_on_tr_cell_id", using: :btree
    t.index ["tr_course_id"], name: "index_tr_training_records_on_tr_course_id", using: :btree
    t.index ["tr_customer_id"], name: "index_tr_training_records_on_tr_customer_id", using: :btree
    t.index ["tr_part_id"], name: "index_tr_training_records_on_tr_part_id", using: :btree
    t.index ["tr_program_id"], name: "index_tr_training_records_on_tr_program_id", using: :btree
    t.index ["tr_secondary_course_name_id"], name: "index_tr_training_records_on_tr_secondary_course_name_id", using: :btree
    t.index ["tr_type_id"], name: "index_tr_training_records_on_tr_type_id", using: :btree
    t.index ["user_id"], name: "index_tr_training_records_on_user_id", using: :btree
  end

  create_table "tr_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.integer  "active_status", default: 1, null: false
    t.integer  "sort"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["name"], name: "name", unique: true, using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.integer  "role_id"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "encrypted_password",                 default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "Role",                   limit: 9,   default: "NO", null: false
    t.string   "username",               limit: 234, default: "x",  null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
  end

  create_table "users_homephone", primary_key: "username", id: :string, limit: 32, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "password",     limit: 244,                                        null: false
    t.string   "Role",         limit: 9,     default: "NO ACCESS"
    t.string   "first_name",   limit: 233
    t.string   "last_name",    limit: 233
    t.string   "address",      limit: 244
    t.string   "phone_num",    limit: 211
    t.string   "email",        limit: 234,                                        null: false
    t.text     "comment_fld1", limit: 65535
    t.datetime "createdtime",                default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updatedtime"
  end

  create_table "users_hrapp_xataface", primary_key: "username", id: :string, limit: 32, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "password",     limit: 244,                                        null: false
    t.string   "Role",         limit: 9,     default: "NO ACCESS"
    t.string   "first_name",   limit: 233
    t.string   "last_name",    limit: 233
    t.string   "address",      limit: 244
    t.string   "phone_num",    limit: 211
    t.string   "email",        limit: 234,                                        null: false
    t.text     "comment_fld1", limit: 65535
    t.datetime "createdtime",                default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updatedtime"
  end

  create_table "users_xataface", primary_key: "username", id: :string, limit: 32, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "password",     limit: 244,                                        null: false
    t.string   "Role",         limit: 9,     default: "NO ACCESS"
    t.string   "first_name",   limit: 233
    t.string   "last_name",    limit: 233
    t.string   "address",      limit: 244
    t.string   "phone_num",    limit: 211
    t.string   "email",        limit: 234,                                        null: false
    t.text     "comment_fld1", limit: 65535
    t.datetime "createdtime",                default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updatedtime"
  end

  create_table "version_associations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "version_id"
    t.string  "foreign_key_name", null: false
    t.integer "foreign_key_id"
    t.index ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key", using: :btree
    t.index ["version_id"], name: "index_version_associations_on_version_id", using: :btree
  end

  create_table "versions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "item_type",      limit: 191,        null: false
    t.integer  "item_id",                           null: false
    t.string   "event",                             null: false
    t.string   "whodunnit"
    t.text     "object",         limit: 4294967295
    t.datetime "created_at"
    t.text     "object_changes", limit: 4294967295
    t.integer  "transaction_id"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
    t.index ["transaction_id"], name: "index_versions_on_transaction_id", using: :btree
  end

  add_foreign_key "corrective_actions", "incidents"
  add_foreign_key "dc_disciplines", "dc_levels"
  add_foreign_key "dc_disciplines", "dc_streams"
  add_foreign_key "dc_disciplines", "employees"
  add_foreign_key "incidents", "corrective_actions"
  add_foreign_key "incidents", "employees"
  add_foreign_key "incidents", "inci_assets"
  add_foreign_key "incidents", "users"
  add_foreign_key "tr_training_employees", "stf_employees"
  add_foreign_key "tr_training_employees", "tr_training_records"
  add_foreign_key "tr_training_records", "stf_assets"
  add_foreign_key "tr_training_records", "tr_cells"
  add_foreign_key "tr_training_records", "tr_courses"
  add_foreign_key "tr_training_records", "tr_customers"
  add_foreign_key "tr_training_records", "tr_parts"
  add_foreign_key "tr_training_records", "tr_programs"
  add_foreign_key "tr_training_records", "tr_secondary_course_names"
  add_foreign_key "tr_training_records", "tr_types"
  add_foreign_key "tr_training_records", "users"
  add_foreign_key "users", "roles"
end
