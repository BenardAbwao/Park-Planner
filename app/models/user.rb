class User < ApplicationRecord

    has_secure_password
    has_many :reservations, dependent: :destroy
    validates :email, uniqueness: true, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ , message: "Must be a valid email address" }
end
