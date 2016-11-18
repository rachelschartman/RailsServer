class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.belongs_to :user, index: true
      t.integer :deviceNum
      t.string :lat
      t.string :long
      t.string :deviceName
      t.string :myKey
      t.string :ipauth

      t.timestamps
    end
  end
end
