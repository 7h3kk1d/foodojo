class Potluck < ActiveRecord::Base
  has_many :participants
  has_many :persons, through: :participants
end
