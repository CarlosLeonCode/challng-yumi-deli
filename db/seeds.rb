# frozen_string_literal: true

if Admin.all.empty?
  Admin.create(email: 'yumi@yumi.com', password: 123456, password_confirmation: 123456)
  puts 'Admin created! 😃'
end

if Product.all.empty?
  products = []
  25.times do
    products << {
      name: Faker::Movie.title,
      description: 'Movie',
      weight: '250 g',
      price: 12.500
    }
  end
  Product.create(products)
  puts 'Products created! 😃'
end
