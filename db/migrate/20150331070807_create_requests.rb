class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :zone
      t.integer :declarant
      t.string :content

      t.timestamps null: false
    end
  end
end
