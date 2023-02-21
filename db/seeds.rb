puts "🌱 Seeding spices..."

10.times do
  Table.create()
end

10.times do
  Waiter.create(name: Faker::Name.name)
end

puts "✅ Done seeding!"
