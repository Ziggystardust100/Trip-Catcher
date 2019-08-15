class Favourite < ApplicationRecord
  belongs_to :catcher
  belongs_to :destination
end
