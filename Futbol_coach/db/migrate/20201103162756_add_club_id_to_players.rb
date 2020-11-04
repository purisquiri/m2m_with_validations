class AddClubIdToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :club_id, :integer
  end
end
