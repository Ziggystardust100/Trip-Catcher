class Favourite < ApplicationRecord
  belongs_to :catcher
  belongs_to :destination

  validates :catcher_id, uniqueness: { scope: :destination_id,
    message: "you already liked this destination" }
end
