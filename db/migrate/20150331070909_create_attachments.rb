class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :request
      t.binary :file

      t.timestamps null: false
    end
  end
end
