class Potluck < ActiveRecord::Base
  has_many :participants
  has_many :people, through: :participants
end
