class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.integer :type
      t.integer :city
      t.string :restriction

      t.timestamps null: false
    end
  end
end
