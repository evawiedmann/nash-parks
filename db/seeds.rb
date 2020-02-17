# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks

    nash_parks = ["Canyon De Chelly National Monument", "Casa Grande Ruins National Monument", "Chiricahua National Monument", "Coronado National Memorial", "Fort Bowie National Historic Site", "Glen Canyon National Recreation Area", "Grand Canyon National Park", "Hohokam Pima National Monument", "Hubbell Trading Post National Historic Site"]

    cities = ["Omaha", "Chicago", "Detroit", "Des Moines", "New York", "Iowa City", "Burlington", "Charleston", "Lincoln"]

    states = ["CA","UT", "CO", "WA", "OR", "IA", "NY", "NJ", "NH"]

    Park.destroy_all
    9.times do |i|
      park = Park.create!(
        name: nash_parks.sample,
        city: cities.sample,
        state: states.sample
      )
      puts "Park #{i}: Park name is #{park.name}, city is #{park.city}, and state is #{park.state}"

      end
    end
  end
  Seed.begin
