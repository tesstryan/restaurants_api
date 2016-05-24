class Restaurant < ActiveRecord::Base

    validates :name, presence: true
    validates :rating, numericality: true, :inclusion => 0..5

    has_many :menu_items

end
