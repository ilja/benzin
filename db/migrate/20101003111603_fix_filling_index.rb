class FixFillingIndex < ActiveRecord::Migration
  def self.up
    add_index :fillings, :car_id, :unique => false
  end

  def self.down
    remove_index :fillings, :car_id
  end
end
