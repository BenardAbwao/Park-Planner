class Park < ApplicationRecord
    has_many :users, through: :reservations
    has_many :reservations, through: :campsites
    has_many :campsites
end
