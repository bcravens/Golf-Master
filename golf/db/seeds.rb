# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative './course_data.rb'
require_relative './hole_data.rb'

Course.destroy_all
Hole.destroy_all
Group.destroy_all
User.destroy_all
Bet.destroy_all

hole_data = get_hole_data()
course_data = get_course_data()

hole_data.each_pair do |course_name, holes|
  info = course_data[course_name]
  current_course = Course.create!({
      img_url:      info[:img_url],
      name:         info[:name],
      location:     info[:location],
      num_holes:    info[:num_holes],
      par:          info[:par],
      yardage:      info[:yardage],
      rating:       info[:rating]
  })

  holes.each do |hole|
    Hole.create!({
      img_url:      hole[:img_url],
      hole_num:     hole[:hole_num],
      par:          hole[:par],
      yardage:        hole[:yardage],
      course:       current_course
    })
  end
end

sky = Course.create(img_url:"none", name:"pebble", location:"123 white", num_holes:18, par:72, yardage:6820, rating:74)

holeone = Hole.create(img_url: "none", hole_num:1, par:3, yardage:218, course: sky)
holetwo = Hole.create(img_url: "none", hole_num:2, par:3, yardage:218, course: sky)
holethree = Hole.create(img_url: "none", hole_num:3, par:3, yardage:218, course: sky)
holefour = Hole.create(img_url: "none", hole_num:4, par:3, yardage:218, course: sky)
holefive = Hole.create(img_url: "none", hole_num:5, par:3, yardage:218, course: sky)
holesix = Hole.create(img_url: "none", hole_num:6, par:3, yardage:218, course: sky)
holeseven = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)


friends = Group.create(name: "Bradley and Friends", num_players: 3)
other_group = Group.create(name: "Other Group", num_players: 3)

bradley = User.create(name:"bradley", email:"bradley@gmail.com", username:"bcravens", group: friends)
jolie = User.create(name:"jolie", email:"jolie@gmail.com", username:"jrosenthal", group: friends)
ethan = User.create(name:"ethan", email:"ethan@gmail.com", username:"ethanc", group: friends)


rob = User.create(name:"rob", email:"rob@gmail.com", username:"rob", group: other_group)
joe = User.create(name:"joe", email:"joe@gmail.com", username:"joe", group: other_group)
paul = User.create(name:"paul", email:"paul@gmail.com", username:"paul", group: other_group)

money = Bet.create(amount: 5, hole: holeone, group: friends)
money = Bet.create(amount: 25, hole: holetwo, group: friends)
money = Bet.create(amount: 20, hole: holethree, group: friends)
money = Bet.create(amount: 15, hole: holefour, group: friends)
money = Bet.create(amount: 10, hole: holefive, group: friends)
money = Bet.create(amount: 5, hole: holesix, group: friends)
money = Bet.create(amount: 5, hole: holeseven, group: friends)

money = Bet.create(amount: 50, hole: holeone, group: other_group)
money = Bet.create(amount: 100, hole: holetwo, group: other_group)
money = Bet.create(amount: 100, hole: holethree, group: other_group)
money = Bet.create(amount: 100, hole: holefour, group: other_group)
money = Bet.create(amount: 150, hole: holefive, group: other_group)
money = Bet.create(amount: 200, hole: holesix, group: other_group)
money = Bet.create(amount: 200, hole: holeseven, group: other_group)
