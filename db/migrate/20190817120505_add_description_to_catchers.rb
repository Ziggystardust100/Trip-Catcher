class AddDescriptionToCatchers < ActiveRecord::Migration[5.2]
  def change
    add_column :catchers, :description, :string
  end
end
