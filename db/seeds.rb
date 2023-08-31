# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#


puts "cleaning database"
User.destroy_all
Challenge.destroy_all

puts "creating users..."
  user1 = User.create!(
    first_name: "Jane",
    last_name: "Smith",
    email: "test@hotmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 44,
    avatar: "avatar5.png"
  )
  user1.save


  user2 = User.create!(
    first_name: "Samuel",
    last_name: "Donker",
    email: "samuel.donker@hotmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar2.png"
)
  user2.save

  user3 = User.create!(
    first_name: "Samadi",
    last_name: "Patel",
    email: "samadi.patel@hotmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 99,
    avatar: "avatar6.png"
)
  user3.save


  user4 = User.create!(
    first_name: "Silas",
    last_name: "Woldu",
    email: "silas.woldu@hotmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar4.png"
)

  user4.save

  user5 = User.create!(
    first_name: "Isaiah",
    last_name: "Deane",
    email: "isaiah.deane@hotmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 99,
    avatar: "avatar5.png"
)

  user5.save

  user6 = User.create!(
    first_name: "Jade",
    last_name: "Xuan",
    email: "jade.xuan@gmail.com",
    password: "123456",
    overall_score: 26,
    baseline_stats: 55,
    avatar: "avatar6.png"
)

  user6.save

  user7 = User.create!(
    first_name: "Roberta",
    last_name: "Ferrari",
    email: "roberta.ferrari@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 86,
    avatar: "avatar7.png"
)

  user7.save

  user8 = User.create!(
    first_name: "Wang",
    last_name: "Yi",
    email: "Wang.Yi@gmail.com",
    password: "123456",
    overall_score: 22,
    baseline_stats: 98,
    avatar: "avatar8.png"
)

  user8.save

  user9 = User.create!(
    first_name: "Charlie",
    last_name: "Chaplin",
    email: "Charlie.Chaplin@gmail.com",
    password: "123456",
    overall_score: 56,
    baseline_stats: 65,
    avatar: "avatar9.png"
)

  user9.save

  user10= User.create!(
    first_name: "Olivia",
    last_name: "Taylor",
    email: "Olivia.Taylor@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar10.png"
)

  user10.save


  user11= User.create!(
    first_name: "Kevin",
    last_name: "Thomas",
    email: "Kevin.Thomas@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar11.png"
)

  user11.save

  user12= User.create!(
    first_name: "Stella",
    last_name: "Cruz",
    email: "stella.cruz@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 12,
    avatar: "avatar12.png"
)

  user12.save

  user13= User.create!(
    first_name: "Louise",
    last_name: "Jackson",
    email: "louise.jackson@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar13.png"
)

  user13.save

  user14= User.create!(
    first_name: "Deji",
    last_name: "Omari",
    email: "deji.omari@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar14.png"
)

  user14.save

  user15= User.create!(
    first_name: "Thadsana",
    last_name: "Young",
    email: "thadsana.young@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar15.png"
)

  user15.save

  user16= User.create!(
    first_name: "Vanessa",
    last_name: "Rosario",
    email: "vanessa.rosario@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 22,
    avatar: "avatar16.png"
)

  user16.save

  user17= User.create!(
    first_name: "Eloise",
    last_name: "Bastien",
    email: "eloise.bastien@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 75,
    avatar: "avatar17.png"
)

  user17.save

  user18= User.create!(
    first_name: "Jose",
    last_name: "rodriguez",
    email: "jose.rodriguez@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 35,
    avatar: "avatar18.png"
)

  user18.save

  user19= User.create!(
    first_name: "Mila",
    last_name: "Ivanov",
    email: "mila.ivanov@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 66,
    avatar: "avatar19.png"
)

  user19.save

  user20= User.create!(
    first_name: "Prash",
    last_name: "Perera",
    email: "prash.perera@gmail.com",
    password: "123456",
    overall_score: 12,
    baseline_stats: 66,
    avatar: "avatar20.png"
)
  user20.save


puts "creating challenges"
Challenge.create(summary: "a very fun and exciting challenge to join", duration: 5, name: "beat the meat", description: "a big long description about the challenge and why you should do it.", prompt:"did you today?")
Challenge.create(summary: "a challenging challenge", duration: 5, name: "challenge 2", description: "a big long description about the challenge and why you should do it.", prompt:"did you today?")
Challenge.create(summary: "a very fun and exciting challenge to join", duration: 5, name: "challenge 3", description: "a big long description about the challenge and why you should do it.", prompt:"did you today?")
