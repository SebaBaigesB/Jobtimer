# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying users"
User.destroy_all

user_profiles = [
  { email: "baigesbellosebastien@gmail.com",
    password: "azerty",
    first_name: "Sebastien",
    last_name: "Baiges Bello",
    city: "Bordeaux",
    country_select: "France",
    job: "Developpeur web",
    job_title: "freelance",
    avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiT-cQNc6BLgJ-33-R5QCkKnMxBwc1N1sCLMpzZNb-QkAv-3lOMA&s",
    hourly_wage: "19",
    banner_image: "data:image/jpeg;base64,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"
  },
]
User.create!(user_profiles)
