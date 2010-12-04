class CreateResidences < ActiveRecord::Migration
  def self.up
    create_table :residences do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :county
      t.string :zip_code
      t.boolean :occupant_owner
      t.integer :estimated_predisaster_FMV_of_structure
      t.integer :estimated_structure_loss_in_dollars
      t.integer :estimated_personal_property_loss_in_dollars
      t.text :primary_cause_of_damage
      t.string :type_of_insurance
      t.integer :deductible
      t.boolean :is_habitable
      t.boolean :is_accessible
      t.string :category_of_damage
      t.text :description_of_damages
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_email
      t.integer :total_uninsured_loss

      t.timestamps
    end
  end

  def self.down
    drop_table :residences
  end
end
