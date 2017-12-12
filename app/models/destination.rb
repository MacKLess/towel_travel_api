class Destination < ActiveRecord::Base
  validates :location, :planet, :locals, :transportation, :presence => true

  scope :search_planet, -> (planet_parameter) { where(planet: planet_parameter) }

  scope :search_location, -> (location_parameter) { where(location: location_parameter) }

end
