class Invitation < ApplicationRecord
  belongs_to :trip
  belongs_to :catcher
  validates_uniqueness_of :catcher, scope: :trip
end
