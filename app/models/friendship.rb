class Friendship < ApplicationRecord
  after_create :create_inverse_relationship
  after_destroy :destroy_inverse_relationship
  belongs_to :catcher
  belongs_to :friend, foreign_key: :friend_id, class_name: 'Catcher'
  validates :catcher, presence: true
  validates :friend, presence: true, uniqueness: { scope: :catcher }



  private

  def not_self
  errors.add(:friend, "can't be equal to user") if catcher == friend
  end

  def create_inverse_relationship
    friend.friendships.create(friend: catcher) #switched here user to catcher
  end

  def destroy_inverse_relationship
    friendship = friend.friendships.find_by(friend: catcher) #switched here user to catcher
    friendship.destroy if friendship
  end
end
