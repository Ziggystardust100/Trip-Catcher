class Trip < ApplicationRecord
  belongs_to :destination
  belongs_to :catcher
  has_many :invitations, dependent: :destroy
  has_many :catchers, through: :invitations
end
