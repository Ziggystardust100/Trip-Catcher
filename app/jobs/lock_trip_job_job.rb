class LockTripJobJob < ApplicationJob
  queue_as :default

  def perform
    Trip.all.each do |trip|
      if Date.today + 7 >= trip.start_date
        trip.status = 'Locked'
        trip.save
      end
    end
  end
end
