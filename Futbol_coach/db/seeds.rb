# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Club.destroy_all
Player.destroy_all

5.times do 
    Club.create(name: Faker::WorldCup.team, city: Faker::WorldCup.city, home_arena: Faker::WorldCup.stadium, wins: rand(1...5), losses: rand(1..5))  
end


Club.all.each do |club|
    5.times do
        Player.create(name: Faker::Artist.name, phone_number: Faker::Base.numerify('##########'), email: Faker::Internet.email, player_number: rand(1...20), club_id: club.id)
    end

end
