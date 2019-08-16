class AddPhotoToCatchers < ActiveRecord::Migration[5.2]
  def change
    add_column :catchers, :photo, :string
  end
end
