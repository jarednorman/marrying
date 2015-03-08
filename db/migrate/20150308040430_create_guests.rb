class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.string :plus_one
      t.string :plus_one_reason

      t.timestamps null: false
    end
  end
end
