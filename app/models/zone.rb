class Zone < ActiveRecord::Base
  belongs_to :city
  default_scope -> { order 'created_at DESC'}
  validates :city_id, presence: true
end
