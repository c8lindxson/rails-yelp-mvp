Restaurant.destroy_all

5.times do
  restaurant = Restaurant.new
  restaurant.name = Faker::Restaurant.name
  restaurant.address = Faker::Address.street_address
  restaurant.phone_number = Faker::PhoneNumber.cell_phone
  restaurant.category = Restaurant::CATEGORIES.sample
  restaurant.save
end
