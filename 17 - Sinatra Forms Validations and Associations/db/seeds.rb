Book.destroy_all
Landmark.destroy_all

GoogleBooks::Adapter.new("Stephen King").fetch_books

adjectives = %w(amazing ancient mysterious incredible inscrutable vast gargantuan hidden cryptic haunted wondrous chilling imperial)

nouns = %w(shorthair yosemite versailles picnic garden mountain fountain monument tower plaza obelisk pizza)

locations = ["Parts Unknown", "France", "Around the Corner, talk to Jeff, he'll know"]

10.times do
  landmark = Landmark.create!(name: "#{adjectives.sample.capitalize} #{nouns.sample.capitalize}", location: locations.sample, max_capacity: rand(1000) + 1)
  p landmark
end

book = Book.find(1)
landmark = Landmark.find(8)

visit = Visit.create(reflection: "spooky yet soothing", book: book, landmark: landmark)

p book.landmarks
p landmark.books
