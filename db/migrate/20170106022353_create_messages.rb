class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :rsvp_id

      t.timestamps null: false
    end
  end
end
