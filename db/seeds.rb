# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning database"
Challenge.destroy_all

puts "creating challenges"
Challenge.create(summary: "a very fun and exciting challenge to join", duration: 5, name: "beat the meat", description: "a big long description about the challenge and why you should do it.")
