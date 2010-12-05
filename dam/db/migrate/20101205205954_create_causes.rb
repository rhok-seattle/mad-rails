class CreateCauses < ActiveRecord::Migration
  def self.up
    create_table :causes do |t|
      t.string :cause

      t.timestamps
    end
  end

  def self.down
    drop_table :causes
  end
end
