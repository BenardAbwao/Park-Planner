class Campsite < ApplicationRecord
    belongs_to :park
    has_many :reservations
    has_many :users, through: :reservations
end
