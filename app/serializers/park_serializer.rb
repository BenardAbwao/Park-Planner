class ParkSerializer < ActiveModel::Serializer
    attributes :id, :image, :name, :location, :info, :website
    has_many :campsites
end