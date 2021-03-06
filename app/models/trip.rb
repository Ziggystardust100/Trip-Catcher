class Trip < ApplicationRecord
  belongs_to :destination
  belongs_to :catcher
  has_many :invitations, dependent: :destroy
  has_many :catchers, through: :invitations
  has_many :tripchats, dependent: :destroy
  validates_presence_of :start_date, :end_date, :catcher_id, :max_catchers
  validate :trip_is_possible?

  def trip_is_possible?
    unless start_date.nil? || end_date.nil?
      if start_date > end_date
        errors.add(:end_date, 'must be after the departure date')
      end
    end
  end
end
