class Restaurant < ActiveRecord::Base

    validates :name, presence: true
    validates :rating, numericality: true
end
