class AddCatcherToTrips < ActiveRecord::Migration[5.2]
  def change
    add_reference :trips, :catcher, foreign_key: true
  end
end
