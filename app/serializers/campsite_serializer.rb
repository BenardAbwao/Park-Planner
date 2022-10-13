class CampsiteSerializer < ActiveModel::Serializer
    attributes :id, :image, :name, :location, :info, :park_id
    belongs_to :park 
end