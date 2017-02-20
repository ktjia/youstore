class Storage < ApplicationRecord

  has_many :bookings, dependent: :destroy

  validates :title, presence: true
  validates :size, presence: true
  validates :description, presence: true

end
