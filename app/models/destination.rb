class Destination < ActiveRecord::Base
  validates :location, :planet, :locals, :transportation, :review, :author, :presence => true
end
