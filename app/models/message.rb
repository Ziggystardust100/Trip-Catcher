class Message < ApplicationRecord
  belongs_to :catcher
  belongs_to :conversation
  validates_presence_of :content, :conversation_id, :catcher_id

  def message_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end

end
