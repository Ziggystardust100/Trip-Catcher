class Trip < ApplicationRecord
  belongs_to :destination
  has_many :invitations, dependent: :destroy
end
