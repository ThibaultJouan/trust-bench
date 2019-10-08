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

ActiveRecord::Schema.define(version: 2019_09_02_083856) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "approaches", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bench_archives", force: :cascade do |t|
    t.float "median_value"
    t.float "min_value"
    t.float "max_value"
    t.string "source"
    t.bigint "kpi_id"
    t.bigint "approach_id"
    t.bigint "activity_id"
    t.bigint "size_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_bench_archives_on_activity_id"
    t.index ["approach_id"], name: "index_bench_archives_on_approach_id"
    t.index ["kpi_id"], name: "index_bench_archives_on_kpi_id"
    t.index ["size_id"], name: "index_bench_archives_on_size_id"
  end

  create_table "benches", force: :cascade do |t|
    t.string "median_value"
    t.string "min_value"
    t.string "max_value"
    t.string "source"
    t.bigint "kpi_id"
    t.bigint "approach_id"
    t.bigint "activity_id"
    t.bigint "size_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_benches_on_activity_id"
    t.index ["approach_id"], name: "index_benches_on_approach_id"
    t.index ["kpi_id"], name: "index_benches_on_kpi_id"
    t.index ["size_id"], name: "index_benches_on_size_id"
  end

  create_table "collected_data", force: :cascade do |t|
    t.float "value"
    t.float "numerator"
    t.float "denominator"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "company"
    t.string "position"
    t.bigint "kpi_id"
    t.bigint "approach_id"
    t.bigint "activity_id"
    t.bigint "size_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_collected_data_on_activity_id"
    t.index ["approach_id"], name: "index_collected_data_on_approach_id"
    t.index ["kpi_id"], name: "index_collected_data_on_kpi_id"
    t.index ["size_id"], name: "index_collected_data_on_size_id"
  end

  create_table "kpis", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "is_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
