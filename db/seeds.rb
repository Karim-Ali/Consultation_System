# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Create some sample users
Patient.create(full_name: 'Kareem Mostafa', date_of_birth: Date.new(1985, 5, 15), phone_number: '123-456-7890', email: 'Kareem@gmail.com')
Patient.create(full_name: 'Mostafa Kareem', date_of_birth: Date.new(1990, 8, 21), phone_number: '987-654-3210', email: 'Mostafa@gmail.com')