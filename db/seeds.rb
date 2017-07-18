# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Destination.destroy_all
Review.destroy_all

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_users
    seed.generate_dest_rev
  end

  def generate_users
    testAdmin = User.create!(
                           email: 'tadmin@gmail.com',
                           password: '1234567',
                           admin: true
    )

    testUser = User.create!(
                           email: 'tuser@gmail.com',
                           password: '1234567',
                           admin: false
    )
  end


  def generate_dest_rev
    10.times do |i|
      dest = Destination.create!(city: Faker::Zelda.location,
                                 country: Faker::StarWars.planet

      )
      3.times do |j|
        dest.reviews.create!(author: Faker::Book.author,
                             content: Faker::ChuckNorris.fact
        )
      end
    end
  end

end

Seed.begin

p "Created #{User.count} users"
p "Created #{Destination.count} destinations"
p "Created #{Review.count} reviews"
