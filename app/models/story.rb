class Story < ApplicationRecord
  belongs_to :catcher
  belongs_to :destination

  validates :title, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
