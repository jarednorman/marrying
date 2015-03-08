class AddComingToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :coming, :boolean
  end
end
