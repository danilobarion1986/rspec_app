class AddBrainsToZombies < ActiveRecord::Migration[5.1]
  def change
    add_column :zombies, :brains, :integer
  end
end
