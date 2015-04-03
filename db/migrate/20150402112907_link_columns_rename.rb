class LinkColumnsRename < ActiveRecord::Migration
  def change
    rename_column :zones, :city, :city_id
    rename_column :requests, :zone, :zone_id
    rename_column :requests, :declarant, :user_id
    rename_column :attachments, :request, :request_id
  end
end
