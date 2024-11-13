# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Faker::Restaurant.name
# Faker::Restaurant.review

puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "La cuisine de Xav", address: "7 Boundary St, London E2 7JE", category: "italian")
puts "Created La cuisine de Xav"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese")
puts "Created Pizza East"
Restaurant.create!(name: "La cuisine de Chloé", address: "Mons", category: "belgian")
puts 'Created La cuisine de Chloé'
Restaurant.create!(name: "Eliot's kitchen", address: "St Affrique", category: "french")
puts "Created Eliot's kitchen"
Restaurant.create!(name: "La cuisine d'Antoine", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese")
puts "Created La cuisine d'Antoine"
# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
