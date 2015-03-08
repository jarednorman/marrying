class ChangeGuestReasonColumn < ActiveRecord::Migration
  def change
    change_column :guests, :plus_one_reason, :text
  end
end
