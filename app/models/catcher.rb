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

  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships


  accepts_nested_attributes_for :pictures, allow_destroy: true

  def remove_friend(friend)
    current_catcher.friends.destroy(friend)
  end

end
