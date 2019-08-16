class Story < ApplicationRecord
  belongs_to :catcher
  belongs_to :destination
  has_many :pictures, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
