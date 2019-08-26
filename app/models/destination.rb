class Destination < ApplicationRecord
  has_many :trips
  has_many :favourites, dependent: :destroy
  has_many :invitations, through: :trips
  has_many :stories, dependent: :destroy
  has_many :catchers, through: :favourites
  has_many :pictures, dependent: :destroy
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch
  pg_search_scope :search_by_location,
    against: [ :location ],
    using: {
      tsearch: { prefix: true }
    }
end
