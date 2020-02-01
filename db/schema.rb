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

ActiveRecord::Schema.define(version: 2020_02_01_014056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "girl_name", null: false
    t.integer "donations", default: 0, null: false
    t.integer "donations_online", default: 0, null: false
    t.integer "lemon_ups", default: 0, null: false
    t.integer "lemon_ups_online", default: 0, null: false
    t.integer "trefoils", default: 0, null: false
    t.integer "trefoils_online", default: 0, null: false
    t.integer "do_si_dos", default: 0, null: false
    t.integer "do_si_dos_online", default: 0, null: false
    t.integer "samoas", default: 0, null: false
    t.integer "samoas_online", default: 0, null: false
    t.integer "tagalongs", default: 0, null: false
    t.integer "tagalongs_online", default: 0, null: false
    t.integer "thin_mints", default: 0, null: false
    t.integer "thin_mints_online", default: 0, null: false
    t.integer "smores", default: 0, null: false
    t.integer "smores_online", default: 0, null: false
    t.integer "toffee_tastic", default: 0, null: false
    t.integer "toffee_tastic_online", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
