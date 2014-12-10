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

ActiveRecord::Schema.define(:version => 20141210144319) do

  create_table "abilities", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "function_user_projects", :force => true do |t|
    t.integer  "function_id"
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "function_user_projects", ["function_id"], :name => "index_function_user_projects_on_function_id"
  add_index "function_user_projects", ["project_id"], :name => "index_function_user_projects_on_project_id"
  add_index "function_user_projects", ["user_id"], :name => "index_function_user_projects_on_user_id"

  create_table "functions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locals", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "zipcode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.integer  "size"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "local_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "projects", ["local_id"], :name => "index_projects_on_local_id"

  create_table "releases", :force => true do |t|
    t.string   "version"
    t.date     "deliver_date"
    t.integer  "project_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "releases", ["project_id"], :name => "index_releases_on_project_id"

  create_table "sprints", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.date     "planning_start_date"
    t.date     "planning_end_date"
    t.date     "execution_start_date"
    t.date     "execution_end_date"
    t.date     "review_meeting_date"
    t.date     "retrospective_meeting_date"
    t.integer  "release_id"
    t.integer  "project_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "sprints", ["project_id"], :name => "index_sprints_on_project_id"
  add_index "sprints", ["release_id"], :name => "index_sprints_on_release_id"

  create_table "task_requirements", :force => true do |t|
    t.integer  "level"
    t.integer  "task_id"
    t.integer  "ability_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "task_requirements", ["ability_id"], :name => "index_task_requirements_on_ability_id"
  add_index "task_requirements", ["task_id"], :name => "index_task_requirements_on_task_id"

  create_table "tasks", :force => true do |t|
    t.string   "description"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "status"
    t.integer  "user_story_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "tasks", ["user_story_id"], :name => "index_tasks_on_user_story_id"

  create_table "themes", :force => true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "themes", ["project_id"], :name => "index_themes_on_project_id"

  create_table "user_abilities", :force => true do |t|
    t.integer  "points"
    t.integer  "ability_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_abilities", ["ability_id"], :name => "index_user_abilities_on_ability_id"
  add_index "user_abilities", ["user_id"], :name => "index_user_abilities_on_user_id"

  create_table "user_languages", :force => true do |t|
    t.integer  "proficiency"
    t.integer  "language_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "user_languages", ["language_id"], :name => "index_user_languages_on_language_id"
  add_index "user_languages", ["user_id"], :name => "index_user_languages_on_user_id"

  create_table "user_stories", :force => true do |t|
    t.string   "description"
    t.integer  "business_value"
    t.integer  "story_points"
    t.integer  "status"
    t.integer  "theme_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "user_stories", ["theme_id"], :name => "index_user_stories_on_theme_id"

  create_table "user_story_acceptance_criterions", :force => true do |t|
    t.string   "description"
    t.integer  "status"
    t.integer  "user_story_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "user_story_acceptance_criterions", ["user_story_id"], :name => "index_user_story_acceptance_criterions_on_user_story_id"

  create_table "user_story_sprints", :force => true do |t|
    t.integer  "user_story_id"
    t.integer  "sprint_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "user_story_sprints", ["sprint_id"], :name => "index_user_story_sprints_on_sprint_id"
  add_index "user_story_sprints", ["user_story_id"], :name => "index_user_story_sprints_on_user_story_id"

  create_table "user_tasks", :force => true do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_tasks", ["task_id"], :name => "index_user_tasks_on_task_id"
  add_index "user_tasks", ["user_id"], :name => "index_user_tasks_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "schedule"
    t.string   "email"
    t.string   "password"
    t.boolean  "admin"
    t.integer  "local_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["local_id"], :name => "index_users_on_local_id"

end
