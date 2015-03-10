class RenameGuestsRsvps < ActiveRecord::Migration
  def change
    rename_table :guests, :rsvps
  end
end
