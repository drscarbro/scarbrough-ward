class Fixcolumn < ActiveRecord::Migration
  def change
    rename_column :messages, :user_id, :rsvp_id
  end
end
