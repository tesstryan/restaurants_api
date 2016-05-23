class Restaurant < ActiveRecord::Base

    validates :name, presence: true
    validates :rating, numericality: true

    has_many :menu_items


    accepts_nested_attributes_for :menu_items
end
