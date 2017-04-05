require "faker"

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

15.times do
  Restaurant.create(
    name: Faker::Team.creature,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  )
end

puts "... made restaurants"
