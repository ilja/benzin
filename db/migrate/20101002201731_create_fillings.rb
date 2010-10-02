class CreateFillings < ActiveRecord::Migration
  def self.up
    create_table :fillings do |t|
      t.integer :car_id
      t.decimal :amount
      t.decimal :price
      t.integer :odometer

      t.timestamps
    end
  end

  def self.down
    drop_table :fillings
  end
end
