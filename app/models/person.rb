class Person < ActiveRecord::Base
  has_one :participants
  has_one :potluck, through: :participants
end
