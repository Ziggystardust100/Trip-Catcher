class Conversation < ApplicationRecord
  belongs_to :sender, foreign_key: :sender_id, class_name: 'Catcher'
  belongs_to :reciever, foreign_key: :reciever_id, class_name: 'Catcher'
  has_many :messages, dependent: :destroy

  validates_uniqueness_of :sender_id, scope: :receiver_id
  scope :between, -> (sender_id, receiver_id) do
    where('(conversations.sender_id = ? AND conversations.receiver_id = ?) OR (conversations.sender_id = ? AND conversations.receiver_id = ?)', sender_id, receiver_id, receiver_id, sender_id)
  end
end
