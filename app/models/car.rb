class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependant: :destroy
  validates :title, presence: true
  validates :location, presence: true
end
