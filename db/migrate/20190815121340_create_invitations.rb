class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.boolean :joined
      t.references :trip, foreign_key: true
      t.references :catcher, foreign_key: true

      t.timestamps
    end
  end
end
