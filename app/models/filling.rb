class Filling < ActiveRecord::Base
  belongs_to :car
  
  validates_numericality_of :amount, :price, :odometer
  validates_presence_of :amount, :price, :odometer
end
