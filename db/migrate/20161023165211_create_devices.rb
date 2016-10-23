class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.integer :deviceNum
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
