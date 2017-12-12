class Destination < ActiveRecord::Base
  validates :location, :planet, :locals, :transportation, :review, :author, :presence => true

  scope :search, -> (planet_parameter) { where(planet: planet_parameter) }

  # scope :location, -> (location_parameter) { where(location: location_parameter) }

end
