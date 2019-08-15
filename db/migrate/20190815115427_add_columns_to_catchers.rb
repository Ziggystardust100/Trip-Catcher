class AddColumnsToCatchers < ActiveRecord::Migration[5.2]
  def change
    add_column :catchers, :first_name, :string
    add_column :catchers, :last_name, :string
    add_column :catchers, :user_name, :string
    add_column :catchers, :birth_date, :date
    add_column :catchers, :gender, :string
    add_column :catchers, :occupation, :string
    add_column :catchers, :hobbies, :text
    add_column :catchers, :past_destinations, :string
  end
end
