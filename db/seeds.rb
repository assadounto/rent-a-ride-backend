# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Car.destroy_all


Car.create(name: "BMW", image: "https://i.pinimg.com/564x/2e/40/02/2e40027b9b156589cfbccbf7b33d3bc7.jpg
", description:"desc",price: 100,location:"LONDON",duration: 5)
Car.create([
  {name: 'V30', image: 'https://i.pinimg.com/564x/2e/40/02/2e40027b9b156589cfbccbf7b33d3bc7.jpg
  ', price: 450.35, location: 'Kigali', duration: 2    },
  {name: 'MPG Honda', image: 'https://i.pinimg.com/564x/2e/40/02/2e40027b9b156589cfbccbf7b33d3bc7.jpg
  ', description: 'It has a stellar combination of cargo and passenger space, safety and reliability ratings, positive reviews from automotive journalists, and available family-friendly features.', price: 400.45, location: 'Istanbul', duration: 2    }
])


User.create(name: "rich", email: "rich@gmail.com", password: "123456", password_confirmation: "123456",role: "admin")

