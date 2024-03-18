# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_03_18_181749) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "body_weights", force: :cascade do |t|
    t.integer "lbs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_body_weights_on_user_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "height_inches"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_entries", force: :cascade do |t|
    t.integer "reps"
    t.integer "sets"
    t.integer "weight_lbs"
    t.bigint "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "exercise_id"
    t.index ["exercise_id"], name: "index_workout_entries_on_exercise_id"
    t.index ["workout_id"], name: "index_workout_entries_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "day_of_week"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "program_id"
    t.index ["program_id"], name: "index_workouts_on_program_id"
    t.index ["user_id"], name: "index_workouts_on_user_id"
  end

  add_foreign_key "body_weights", "users"
  add_foreign_key "workout_entries", "exercises"
  add_foreign_key "workout_entries", "workouts"
  add_foreign_key "workouts", "programs"
  add_foreign_key "workouts", "users"
end
