class CreateTripchats < ActiveRecord::Migration[5.2]
  def change
    create_table :tripchats do |t|
      t.text :content
      t.references :catcher, foreign_key: true
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
