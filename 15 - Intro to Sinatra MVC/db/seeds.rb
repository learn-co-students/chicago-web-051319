# Book.destroy_all
# GoogleBooks::Adapter.new("Madeline L'Engle").fetch_books

Landmark.destroy_all

adjectives = %w(amazing ancient mysterious incredible inscrutable vast gargantuan hidden cryptic haunted wondrous chilling imperial)

nouns = %w(shorthair yosemite versailles picnic garden mountain fountain monument tower plaza obelisk pizza)

locations = ["Parts Unknown", "France", "Around the Corner, talk to Jeff, he'll know"]

10.times do
  landmark = Landmark.create!(name: "#{adjectives.sample.capitalize} #{nouns.sample.capitalize}", location: locations.sample, max_capacity: rand(1000) + 1)
  p landmark
end

bad_landmark = Landmark.new
bad_landmark.save
p bad_landmark.errors
