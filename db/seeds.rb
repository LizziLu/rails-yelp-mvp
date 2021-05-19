puts 'Creating 10 fake restaurants...'
10.times do
  restaurant = Restaurant.new(
    name:    Faker::Restaurant.name,
    address: Faker::Games::SuperMario.location,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
end
puts 'Finished!'
