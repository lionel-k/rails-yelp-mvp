require 'faker'

Restaurant.destroy_all

5.times do
  address = Faker::Address.street_address
  name = Faker::Company.name
  phone_number = Faker::PhoneNumber.phone_number
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  Restaurant.create(name: name, phone_number: phone_number, address: address, category: category)
end
