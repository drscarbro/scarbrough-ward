class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :firstname
      t.string :lastname
      t.integer :party_size
      t.string :email
      t.string :address
      t.timestamps null: false
    end
  end
end
