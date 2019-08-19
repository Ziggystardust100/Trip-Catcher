class ChangeTypeOfColumnInCatchers < ActiveRecord::Migration[5.2]
  def change
    change_column :catchers, :description, :text
    change_column :catchers, :past_destinations, :text
  end
end
