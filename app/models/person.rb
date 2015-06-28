class Person < ActiveRecord::Base
  has_one :participant
  has_one :potluck, through: :participant
end
