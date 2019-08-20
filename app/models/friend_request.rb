class FriendRequest < ApplicationRecord
  belongs_to :catcher
  belongs_to :friend, foreign_key: :friend_id, class_name: 'Catcher'
  validates :catcher, presence: true
  validates :friend, presence: true, uniqueness: { scope: :catcher }
  validate :not_self
  validate :not_friends
  validate :not_pending



  def accept
    catcher.friends << friend
    destroy
  end

private

  def not_self
    errors.add(:friend, "can't be equal to catcher") if catcher == friend
  end

  def not_friends
    errors.add(:friend, 'is already added') if catcher.friends.include?(friend)
  end

  def not_pending
    errors.add(:friend, 'already requested friendship') if friend.pending_friends.include?(catcher)
  end
end
