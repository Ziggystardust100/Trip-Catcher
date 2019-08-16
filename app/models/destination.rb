class Destination < ApplicationRecord
  has_many :trips
  has_many :favourites, dependent: :destroy
  has_many :invitations, through: :trips
  has_many :stories
  has_many :pictures
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true

end
