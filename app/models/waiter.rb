class Waiter < ActiveRecord::Base
  has_many :services

  def tips
    tips = self.services.pluck(:tip)
    tips.sum
  end
end