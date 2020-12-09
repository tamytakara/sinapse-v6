# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_09_115239) do

  create_table "admission_exams", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "admission_exams_universidade", id: false, force: :cascade do |t|
    t.integer "universidade_id", null: false
    t.integer "admission_exam_id", null: false
  end

  create_table "admission_exams_universidades", id: false, force: :cascade do |t|
    t.integer "universidade_id", null: false
    t.integer "admission_exam_id", null: false
  end

  create_table "admission_exams_universitarios", id: false, force: :cascade do |t|
    t.integer "universitario_id", null: false
    t.integer "admission_exam_id", null: false
  end

  create_table "alternativas", force: :cascade do |t|
    t.text "desc"
    t.integer "question_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_alternativas_on_question_id"
  end

  create_table "ambitions", force: :cascade do |t|
    t.string "data"
    t.integer "course_id"
    t.integer "vestibulando_id"
    t.integer "admission_exam_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admission_exam_id"], name: "index_ambitions_on_admission_exam_id"
    t.index ["course_id"], name: "index_ambitions_on_course_id"
    t.index ["vestibulando_id"], name: "index_ambitions_on_vestibulando_id"
  end

  create_table "answers", force: :cascade do |t|
    t.text "desc"
    t.integer "question_id"
    t.integer "simulado_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "correta"
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["simulado_id"], name: "index_answers_on_simulado_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "area"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses_universidades", id: false, force: :cascade do |t|
    t.integer "universidade_id", null: false
    t.integer "course_id", null: false
  end

  create_table "materia", force: :cascade do |t|
    t.text "desc"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "materias_questions", id: false, force: :cascade do |t|
    t.integer "materia_id", null: false
    t.integer "question_id", null: false
  end

  create_table "materias_universitarios", id: false, force: :cascade do |t|
    t.integer "materia_id", null: false
    t.integer "universitario_id", null: false
  end

  create_table "provas", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.integer "admission_exam_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admission_exam_id"], name: "index_provas_on_admission_exam_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "desc"
    t.text "gabarito"
    t.string "image"
    t.integer "prova_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prova_id"], name: "index_questions_on_prova_id"
  end

  create_table "resolutions", force: :cascade do |t|
    t.text "desc"
    t.integer "question_id"
    t.integer "universitario_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_resolutions_on_question_id"
    t.index ["universitario_id"], name: "index_resolutions_on_universitario_id"
  end

  create_table "simulados", force: :cascade do |t|
    t.datetime "end"
    t.integer "vestibulando_id"
    t.integer "prova_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prova_id"], name: "index_simulados_on_prova_id"
    t.index ["vestibulando_id"], name: "index_simulados_on_vestibulando_id"
  end

  create_table "universidades", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "picture"
    t.string "password_hash"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "type"
  end

  create_table "votos", force: :cascade do |t|
    t.boolean "positivo"
    t.integer "user_id"
    t.integer "resolution_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resolution_id"], name: "index_votos_on_resolution_id"
    t.index ["user_id"], name: "index_votos_on_user_id"
  end

end
