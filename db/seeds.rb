# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ['Action', 'Comedy', 'Drama', 'Horror'].each do |genre_|
#     MovieGenre.find_or_create_by!(: genre_)
#   end
puts 'Seeding data......'

Car.destroy_all
Review.destroy_all
Owner.destroy_all

owner1 = Owner.create!(nickname: 'Jean Philippe-Mateta ')
owner2 = Owner.create!(nickname: 'Pep Guardiola')
owner3 = Owner.create!(nickname: 'Erling Haaland')
owner4 = Owner.create!(nickname: 'Adam Wharton')
owner5 = Owner.create!(nickname: 'Kevin de Bruyne')

Car.create!(
  brand: 'Porsche',
  model: '911 GT3 RS 992',
  year: '2023',
  fuel: 'Unleaded petrol',
  owner: owner1
)

Car.create!(
  brand: 'Ford',
  model: 'Fiesta',
  year: '2022',
  fuel: 'Unleaded petrol',
  owner: owner2
)

Car.create!(
  brand: 'Volkswagen',
  model: 'Golf GTI',
  year: '2024',
  fuel: 'Unleaded petrol',
  owner: owner3
)

Car.create!(
  brand: 'Bugatti',
  model: 'Chiron',
  year: '2016',
  fuel: 'Unleaded petrol',
  owner: owner4
)

Car.create!(
  brand: 'Lamborghini',
  model: 'SV Roadster',
  year: '2017',
  fuel: 'Unleaded petrol',
  owner: owner5
)

puts "#{Owner.count} owners created and #{Car.count} cars created"
