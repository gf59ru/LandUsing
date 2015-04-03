class City < ActiveRecord::Base
  has_many :zones, dependent: :destroy
end
