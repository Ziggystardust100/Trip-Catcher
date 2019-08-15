class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :location
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
