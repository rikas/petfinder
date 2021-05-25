puts "Destroying all cats!"
Cat.destroy_all

puts "Creating 30 cats..."
30.times do
  Cat.create!(
    color: Faker::Color.color_name,
    breed: Faker::Creature::Cat.breed,
    legs: rand(1..4),
    description: Faker::Books::Dune.quote
  )
end

puts "All done 🎉"
