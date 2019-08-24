class AddMaxCatchersToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :max_catchers, :integer
  end
end
