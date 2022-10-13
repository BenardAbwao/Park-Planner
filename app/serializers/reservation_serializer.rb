class ReservationSerializer < ActiveModel::Serializer
    attributes :id, :start_date, :end_date, :campsite_id, :user_id, :park_id
    belongs_to :user
end