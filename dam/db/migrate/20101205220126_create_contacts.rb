class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :address_id
      t.string :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
