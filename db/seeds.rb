# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Incident.create([
    { title: "Login Failure", description: "Users are unable to log in using valid credentials.", severity: "High", reported_at: Time.current },
  { title: "Self-Driving Car Malfunction", description: "A self-driving car failed to detect a pedestrian.", severity: "High", reported_at: Time.current }
])
