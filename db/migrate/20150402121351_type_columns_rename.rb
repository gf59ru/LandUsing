class TypeColumnsRename < ActiveRecord::Migration
  def change
    rename_column :zones, :type, :zone_type
  end
end
