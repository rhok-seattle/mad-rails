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

ActiveRecord::Schema.define(:version => 20101204210030) do

  create_table "residences", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "county"
    t.string   "zip_code"
    t.boolean  "occupant_owner"
    t.integer  "estimated_predisaster_FMV_of_structure"
    t.integer  "estimated_structure_loss_in_dollars"
    t.integer  "estimated_personal_property_loss_in_dollars"
    t.text     "primary_cause_of_damage"
    t.string   "type_of_insurance"
    t.integer  "deductible"
    t.boolean  "is_habitable"
    t.boolean  "is_accessible"
    t.string   "category_of_damage"
    t.text     "description_of_damages"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.integer  "total_uninsured_loss"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
