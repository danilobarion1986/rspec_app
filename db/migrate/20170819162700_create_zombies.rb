class CreateZombies < ActiveRecord::Migration[5.1]
  def change
    create_table :zombies do |t|
      t.string :name

      t.timestamps
    end
  end
end
