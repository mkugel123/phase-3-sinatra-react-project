class Waiter < ActiveRecord::Base
  has_many :services

  def self.names
    pluck(:name)
  end 
end