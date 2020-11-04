class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :city
      t.string :home_arena
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
