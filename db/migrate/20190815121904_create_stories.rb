class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :content
      t.integer :rating
      t.references :catcher, foreign_key: true
      t.references :destination, foreign_key: true

      t.timestamps
    end
  end
end
