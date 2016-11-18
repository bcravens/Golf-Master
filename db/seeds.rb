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
Membership.destroy_all
Event.destroy_all

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

delmonte = Course.where(name: 'Del Monte').first
pebble = Course.where(name: 'Pebble Beach').first
spyglass = Course.where(name: 'Spyglass Hill').first
spanish = Course.where(name: 'The Links at Spanish Bay').first

delmonte_1 = Hole.where(course_id: delmonte.id).first
delmonte_2 = Hole.where(course_id: delmonte.id)[1]
delmonte_3 = Hole.where(course_id: delmonte.id)[2]
delmonte_4 = Hole.where(course_id: delmonte.id)[3]
delmonte_5 = Hole.where(course_id: delmonte.id)[4]
delmonte_6 = Hole.where(course_id: delmonte.id)[5]
delmonte_7 = Hole.where(course_id: delmonte.id)[6]
delmonte_8 = Hole.where(course_id: delmonte.id)[7]
delmonte_9 = Hole.where(course_id: delmonte.id)[8]
delmonte_10 = Hole.where(course_id: delmonte.id)[9]
delmonte_11 = Hole.where(course_id: delmonte.id)[10]
delmonte_12 = Hole.where(course_id: delmonte.id)[11]
delmonte_13 = Hole.where(course_id: delmonte.id)[12]
delmonte_14 = Hole.where(course_id: delmonte.id)[13]
delmonte_15 = Hole.where(course_id: delmonte.id)[14]
delmonte_16 = Hole.where(course_id: delmonte.id)[15]
delmonte_17 = Hole.where(course_id: delmonte.id)[16]
delmonte_18 = Hole.where(course_id: delmonte.id)[17]

pebble_1 = Hole.where(course_id: pebble.id).first
pebble_2 = Hole.where(course_id: pebble.id)[1]
pebble_3 = Hole.where(course_id: pebble.id)[2]
pebble_4 = Hole.where(course_id: pebble.id)[3]
pebble_5 = Hole.where(course_id: pebble.id)[4]
pebble_6 = Hole.where(course_id: pebble.id)[5]
pebble_7 = Hole.where(course_id: pebble.id)[6]
pebble_8 = Hole.where(course_id: pebble.id)[7]
pebble_9 = Hole.where(course_id: pebble.id)[8]
pebble_10 = Hole.where(course_id: pebble.id)[9]
pebble_11 = Hole.where(course_id: pebble.id)[10]
pebble_12 = Hole.where(course_id: pebble.id)[11]
pebble_13 = Hole.where(course_id: pebble.id)[12]
pebble_14 = Hole.where(course_id: pebble.id)[13]
pebble_15 = Hole.where(course_id: pebble.id)[14]
pebble_16 = Hole.where(course_id: pebble.id)[15]
pebble_17 = Hole.where(course_id: pebble.id)[16]
pebble_18 = Hole.where(course_id: pebble.id)[17]

spyglass_1 = Hole.where(course_id: spyglass.id).first
spyglass_2 = Hole.where(course_id: spyglass.id)[1]
spyglass_3 = Hole.where(course_id: spyglass.id)[2]
spyglass_4 = Hole.where(course_id: spyglass.id)[3]
spyglass_5 = Hole.where(course_id: spyglass.id)[4]
spyglass_6 = Hole.where(course_id: spyglass.id)[5]
spyglass_7 = Hole.where(course_id: spyglass.id)[6]
spyglass_8 = Hole.where(course_id: spyglass.id)[7]
spyglass_9 = Hole.where(course_id: spyglass.id)[8]
spyglass_10 = Hole.where(course_id: spyglass.id)[9]
spyglass_11 = Hole.where(course_id: spyglass.id)[10]
spyglass_12 = Hole.where(course_id: spyglass.id)[11]
spyglass_13 = Hole.where(course_id: spyglass.id)[12]
spyglass_14 = Hole.where(course_id: spyglass.id)[13]
spyglass_15 = Hole.where(course_id: spyglass.id)[14]
spyglass_16 = Hole.where(course_id: spyglass.id)[15]
spyglass_17 = Hole.where(course_id: spyglass.id)[16]
spyglass_18 = Hole.where(course_id: spyglass.id)[17]

spanish_1 = Hole.where(course_id: spanish.id).first
spanish_2 = Hole.where(course_id: spanish.id)[1]
spanish_3 = Hole.where(course_id: spanish.id)[2]
spanish_4 = Hole.where(course_id: spanish.id)[3]
spanish_5 = Hole.where(course_id: spanish.id)[4]
spanish_6 = Hole.where(course_id: spanish.id)[5]
spanish_7 = Hole.where(course_id: spanish.id)[6]
spanish_8 = Hole.where(course_id: spanish.id)[7]
spanish_9 = Hole.where(course_id: spanish.id)[8]
spanish_10 = Hole.where(course_id: spanish.id)[9]
spanish_11 = Hole.where(course_id: spanish.id)[10]
spanish_12 = Hole.where(course_id: spanish.id)[11]
spanish_13 = Hole.where(course_id: spanish.id)[12]
spanish_14 = Hole.where(course_id: spanish.id)[13]
spanish_15 = Hole.where(course_id: spanish.id)[14]
spanish_16 = Hole.where(course_id: spanish.id)[15]
spanish_17 = Hole.where(course_id: spanish.id)[16]
spanish_18 = Hole.where(course_id: spanish.id)[17]

group1 = Group.create(name: "Bradley and Friends")
group2 = Group.create(name: "General Assembly")
group3 = Group.create(name: "DC Tech Meetup")
group4 = Group.create(name: "Class '12")
group5 = Group.create(name: "Rockbridge Family")
group6 = Group.create(name: "Bonding")
group7 = Group.create(name: "People world")
group8 = Group.create(name: "Good Times")
group9 = Group.create(name: "Strong Ties")
group10 = Group.create(name: "Weekend Kings")
group11 = Group.create(name: "People I love")
group12 = Group.create(name: "Around the World")
group13 = Group.create(name: "Having Fun")
group14 = Group.create(name: "Near and Dear")
group15 = Group.create(name: "Paul and the Gang")
group16 = Group.create(name: "Queen Bees")
group17 = Group.create(name: "Bachelors")
group18 = Group.create(name: "The Herd")
group19 = Group.create(name: "Favulous Five")
group20 = Group.create(name: "Mountain Movers")
group21 = Group.create(name: "Alpha & Omega")
group22 = Group.create(name: "The Folks")
group23 = Group.create(name: "The Difters")
group24 = Group.create(name: "Hang Over")
group25 = Group.create(name: "Music Maniacs")

user1 = User.create(name:"Bradley", email:"bradley@gmail.com", username:"user1")
user2 = User.create(name:"Paul", email:"paul@gmail.com", username:"user1")
user3 = User.create(name:"Ryan", email:"ryan@gmail.com", username:"user1")
user4 = User.create(name:"Eric", email:"eric@gmail.com", username:"user1")
user5 = User.create(name:"Jolie", email:"jolie@gmail.com", username:"user1")
user6 = User.create(name:"Ethan", email:"ethan@gmail.com", username:"user1")
user7 = User.create(name:"Mike", email:"mike@gmail.com", username:"user1")
user8 = User.create(name:"Christina", email:"christina@gmail.com", username:"user1")
user9 = User.create(name:"Zach", email:"zach@gmail.com", username:"user1")
user10 = User.create(name:"Dylan", email:"dylan@gmail.com", username:"user1")


user1mem = Membership.create(user: user1, group: group1)
user2mem = Membership.create(user: user2, group: group1)
user3mem = Membership.create(user: user3, group: group1)
user4mem = Membership.create(user: user4, group: group1)
user5mem = Membership.create(user: user5, group: group1)

user6mem = Membership.create(user: user1, group: group2)
user7mem = Membership.create(user: user2, group: group2)
user8mem = Membership.create(user: user3, group: group2)
user9mem = Membership.create(user: user4, group: group2)
user10mem = Membership.create(user: user5, group:group2)

user1mem = Membership.create(user: user1, group: group3)
user2mem = Membership.create(user: user2, group: group3)
user3mem = Membership.create(user: user3, group: group3)
user4mem = Membership.create(user: user4, group: group3)
user5mem = Membership.create(user: user5, group: group3)

user6mem = Membership.create(user: user1, group: group4)
user7mem = Membership.create(user: user2, group: group4)
user8mem = Membership.create(user: user3, group: group4)
user9mem = Membership.create(user: user4, group: group4)
user10mem = Membership.create(user: user5, group:group4)

user1mem = Membership.create(user: user1, group: group5)
user2mem = Membership.create(user: user2, group: group5)
user3mem = Membership.create(user: user3, group: group5)
user4mem = Membership.create(user: user4, group: group5)
user5mem = Membership.create(user: user5, group: group5)

user6mem = Membership.create(user: user1, group: group6)
user7mem = Membership.create(user: user2, group: group6)
user8mem = Membership.create(user: user3, group: group6)
user9mem = Membership.create(user: user4, group: group6)
user10mem = Membership.create(user: user5, group:group6)

user1mem = Membership.create(user: user1, group: group7)
user2mem = Membership.create(user: user2, group: group7)
user3mem = Membership.create(user: user3, group: group7)
user4mem = Membership.create(user: user4, group: group7)
user5mem = Membership.create(user: user5, group: group7)

user6mem = Membership.create(user: user1, group: group8)
user7mem = Membership.create(user: user2, group: group8)
user8mem = Membership.create(user: user3, group: group8)
user9mem = Membership.create(user: user4, group: group8)
user10mem = Membership.create(user: user5, group:group8)

user1mem = Membership.create(user: user1, group: group9)
user2mem = Membership.create(user: user2, group: group9)
user3mem = Membership.create(user: user3, group: group9)
user4mem = Membership.create(user: user4, group: group9)
user5mem = Membership.create(user: user5, group: group9)

user6mem = Membership.create(user: user1, group: group10)
user7mem = Membership.create(user: user2, group: group10)
user8mem = Membership.create(user: user3, group: group10)
user9mem = Membership.create(user: user4, group: group10)
user10mem = Membership.create(user: user5, group:group10)


now = Time.now.to_datetime

event1 = Event.create(name: "Business Event", time: now, course: delmonte, group: group1)
event2 = Event.create(name: "World Challenge", time: now, course: spanish, group: group1)
event3 = Event.create(name: "Song Open", time: now, course: pebble, group: group1)
event4 = Event.create(name: "CareerBuilder", time: now, course: spyglass, group: group1)

event5 = Event.create(name: "PGA Tour", time: now, course: delmonte, group: group2)
event6 = Event.create(name: "Jr Championships", time: now, course: spanish, group: group2)
event7 = Event.create(name: "Family Gathering", time: now, course: pebble, group: group2)
event8 = Event.create(name: "Bachelor Party", time: now, course: spyglass, group: group2)

event9 = Event.create(name: "Welcome Event", time: now, course: delmonte, group: group3)
event10 = Event.create(name: "World Challenge", time: now, course: spanish, group: group3)
event11 = Event.create(name: "Mount Vernons", time: now, course: pebble, group: group3)
event12 = Event.create(name: "GA Gathering", time: now, course: spyglass, group: group3)

event13 = Event.create(name: "DC Meetup", time: now, course: delmonte, group: group4)
event14 = Event.create(name: "AOL Golfers", time: now, course: spanish, group: group4)
event15 = Event.create(name: "Brad's Birthday", time: now, course: pebble, group: group4)
event16 = Event.create(name: "Holiday", time: now, course: spyglass, group: group4)

event17 = Event.create(name: "Sec Business Event", time: now, course: delmonte, group: group5)
event18 = Event.create(name: "Jr Champs", time: now, course: spanish, group: group5)
event19 = Event.create(name: "PGA Tour", time: now, course: pebble, group: group5)
event20 = Event.create(name: "Eventbrite", time: now, course: spyglass, group: group5)

event21 = Event.create(name: "Meetups", time: now, course: delmonte, group: group6)
event22 = Event.create(name: "Community Event", time: now, course: spanish, group: group6)
event23 = Event.create(name: "Cravens Family", time: now, course: pebble, group: group6)
event24 = Event.create(name: "Bradley's Event", time: now, course: spyglass, group: group6)


delbet1 = Bet.create(amount: 5, hole: delmonte_1, course: delmonte, event: event1)
delbet2 = Bet.create(amount: 5, hole: delmonte_2, course: delmonte, event: event1)
delbet3 = Bet.create(amount: 5, hole: delmonte_3, course: delmonte, event: event1)
delbet4 = Bet.create(amount: 5, hole: delmonte_4, course: delmonte, event: event1)
delbet5 = Bet.create(amount: 5, hole: delmonte_5, course: delmonte, event: event1)
delbet6 = Bet.create(amount: 5, hole: delmonte_6, course: delmonte, event: event1)
delbet7 = Bet.create(amount: 5, hole: delmonte_7, course: delmonte, event: event1)
delbet8 = Bet.create(amount: 5, hole: delmonte_8, course: delmonte, event: event1)
delbet9 = Bet.create(amount: 5, hole: delmonte_9, course: delmonte, event: event1)
delbet10 = Bet.create(amount: 5, hole: delmonte_10, course: delmonte, event: event1)
delbet11 = Bet.create(amount: 5, hole: delmonte_11, course: delmonte, event: event1)
delbet12 = Bet.create(amount: 5, hole: delmonte_12, course: delmonte, event: event1)
delbet13 = Bet.create(amount: 5, hole: delmonte_13, course: delmonte, event: event1)
delbet14 = Bet.create(amount: 5, hole: delmonte_14, course: delmonte, event: event1)
delbet15 = Bet.create(amount: 5, hole: delmonte_15, course: delmonte, event: event1)
delbet16 = Bet.create(amount: 5, hole: delmonte_16, course: delmonte, event: event1)
delbet17 = Bet.create(amount: 5, hole: delmonte_17, course: delmonte, event: event1)
delbet18 = Bet.create(amount: 5, hole: delmonte_18, course: delmonte, event: event1)

spanishbet1 = Bet.create(amount: 10, hole: spanish_1, course: spanish, event: event2)
spanishbet2 = Bet.create(amount: 10, hole: spanish_2, course: spanish, event: event2)
spanishbet3 = Bet.create(amount: 10, hole: spanish_3, course: spanish, event: event2)
spanishbet4 = Bet.create(amount: 10, hole: spanish_4, course: spanish, event: event2)
spanishbet10 = Bet.create(amount: 10, hole: spanish_10, course: spanish, event: event2)
spanishbet6 = Bet.create(amount: 10, hole: spanish_6, course: spanish, event: event2)
spanishbet7 = Bet.create(amount: 10, hole: spanish_7, course: spanish, event: event2)
spanishbet8 = Bet.create(amount: 10, hole: spanish_8, course: spanish, event: event2)
spanishbet9 = Bet.create(amount: 10, hole: spanish_9, course: spanish, event: event2)
spanishbet10 = Bet.create(amount: 10, hole: spanish_10, course: spanish, event: event2)
spanishbet11 = Bet.create(amount: 10, hole: spanish_11, course: spanish, event: event2)
spanishbet12 = Bet.create(amount: 10, hole: spanish_12, course: spanish, event: event2)
spanishbet13 = Bet.create(amount: 10, hole: spanish_13, course: spanish, event: event2)
spanishbet14 = Bet.create(amount: 10, hole: spanish_14, course: spanish, event: event2)
spanishbet110 = Bet.create(amount: 10, hole: spanish_15, course: spanish, event: event2)
spanishbet16 = Bet.create(amount: 10, hole: spanish_16, course: spanish, event: event2)
spanishbet17 = Bet.create(amount: 10, hole: spanish_17, course: spanish, event: event2)
spanishbet18 = Bet.create(amount: 10, hole: spanish_18, course: spanish, event: event2)

pebbet1 = Bet.create(amount: 5, hole: pebble_1, course: pebble, event: event3)
pebbet2 = Bet.create(amount: 5, hole: pebble_2, course: pebble, event: event3)
pebbet3 = Bet.create(amount: 5, hole: pebble_3, course: pebble, event: event3)
pebbet4 = Bet.create(amount: 5, hole: pebble_4, course: pebble, event: event3)
pebbet5 = Bet.create(amount: 5, hole: pebble_5, course: pebble, event: event3)
pebbet6 = Bet.create(amount: 5, hole: pebble_6, course: pebble, event: event3)
pebbet7 = Bet.create(amount: 5, hole: pebble_7, course: pebble, event: event3)
pebbet8 = Bet.create(amount: 5, hole: pebble_8, course: pebble, event: event3)
pebbet9 = Bet.create(amount: 5, hole: pebble_9, course: pebble, event: event3)
pebbet10 = Bet.create(amount: 5, hole: pebble_10, course: pebble, event: event3)
pebbet11 = Bet.create(amount: 5, hole: pebble_11, course: pebble, event: event3)
pebbet12 = Bet.create(amount: 5, hole: pebble_12, course: pebble, event: event3)
pebbet13 = Bet.create(amount: 5, hole: pebble_13, course: pebble, event: event3)
pebbet14 = Bet.create(amount: 5, hole: pebble_14, course: pebble, event: event3)
pebbet15 = Bet.create(amount: 5, hole: pebble_15, course: pebble, event: event3)
pebbet16 = Bet.create(amount: 5, hole: pebble_16, course: pebble, event: event3)
pebbet17 = Bet.create(amount: 5, hole: pebble_17, course: pebble, event: event3)
pebbet18 = Bet.create(amount: 5, hole: pebble_18, course: pebble, event: event3)
