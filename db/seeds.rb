5.times do
  restaurant = Restaurant.new
  restaurant.name = Faker::Restaurant.name
  restaurant.address = Faker::Address.street_address
  restaurant.category = Restaurant::CATEGORIES.sample
  restaurant.save
end
