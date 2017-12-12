class Destination < ActiveRecord::Base
  validates :location, :planet, :locals, :transportation, :presence => true

  scope :search, -> (planet_parameter) { where(planet: planet_parameter) }

end
