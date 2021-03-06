class Storage < ApplicationRecord

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user
  has_many :users, through: :bookings
  has_attachment :photo
  belongs_to :result
  validates :photo, presence: true
  validates :city, presence: true
  validates :term, presence: true
  validates :title, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :description, presence: true

  geocoded_by :city
  after_validation :geocode, if: :city_changed?
end
