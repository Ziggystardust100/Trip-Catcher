class Catcher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favourites, dependent: :destroy
  has_many :invitations, dependent: :destroy
  has_many :stories
  has_many :pictures, dependent: :destroy
  has_many :destinations, through: :favourites
  has_many :trips, through: :invitations
  has_many :conversations
  accepts_nested_attributes_for :pictures, allow_destroy: true


end
