puts "Cleaning restaurants..."
Restaurant.destroy_all

puts "Creating restaurants..."

15.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  )
  Review.create!(
    content: '',
    rating: rand(3..5),
    restaurant: restaurant
  )
end

puts "... made #{Restaurant.count} restaurants"
