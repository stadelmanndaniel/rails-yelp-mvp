Restaurant.destroy_all

5.times do
  Restaurant.create(name: Faker::Restaurant.name,
                    address: Faker::Address.street_address,
                    phone_number: rand(123_434..223_434),
                    category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
end
