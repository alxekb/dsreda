# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.count.zero?
  User.create(name: 'Joe', email: 'Dow')
  User.create(name: 'Jane', email: 'Dow')
end

if UTransaction.count.zero?
  3.times do UTransaction.create!(user_id: User.last.id, sum: rand(1..10)); end
  5.times do UTransaction.create!(user_id: User.first.id, sum: rand(1..10)); end
end
