class Service < ActiveRecord::Base
  belongs_to :table
  belongs_to :waiter
end