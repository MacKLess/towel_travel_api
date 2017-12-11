require 'faker'
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
  end

  def generate_destinations
    50.times do |i|
      planet =
      location =
      locals =
      transportation =
      review =
      author =
      destination = Destination.create!(
        planet: Faker::HitchhikersGuideToTheGalaxy.planet,
        location: Faker::HitchhikersGuideToTheGalaxy.location,
        locals: Faker::HitchhikersGuideToTheGalaxy.specie,
        transportation: Faker::HitchhikersGuideToTheGalaxy.starship,
        review: Faker::HitchhikersGuideToTheGalaxy.marvin_quote,
        author: Faker::HitchhikersGuideToTheGalaxy.character
      )
      puts "Destination #{i}: Journey to #{destination.location}, on planet #{destination.planet}. You'll travel aboard the #{destination.transportation} and be able to visit the local population of #{destination.locals}. Read the recent review from previous visitor, #{destination.author}: '#{destination.review}'."
    end
  end
end

Seed.begin
