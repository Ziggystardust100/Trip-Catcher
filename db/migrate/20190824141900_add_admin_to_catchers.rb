class AddAdminToCatchers < ActiveRecord::Migration[5.2]
  def change
      add_column :catchers, :admin, :boolean, null: false, default: false

  end
end
