class Invitation < ApplicationRecord
  belongs_to :trip
  belongs_to :catcher
end
