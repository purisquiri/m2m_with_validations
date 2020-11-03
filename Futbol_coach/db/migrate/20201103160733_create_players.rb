class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :phone_number
      t.string :email
      t.integer :player_number

      t.timestamps
    end
  end
end
