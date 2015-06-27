class Participant < ActiveRecord::Base
  belongs_to :person
  belongs_to :potluck
end
