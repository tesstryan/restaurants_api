class MenuItem < ActiveRecord::Base

  validates :restaurant_id, presence: true
  validates :name, presence: true

  belongs_to :restaurant
  has_many :tags

end
