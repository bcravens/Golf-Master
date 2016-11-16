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

sky = Course.create(img_url:"https://www.pebblebeach.com/content/uploads/pbgl-5-photogallery-1550x930.jpg", name:"pebble", location:"123 white", num_holes:18, par:72, yardage:6820, rating:74)

holeone = Hole.create(img_url: "none", hole_num:1, par:3, yardage:218, course: sky)
holetwo = Hole.create(img_url: "none", hole_num:2, par:3, yardage:218, course: sky)
holethree = Hole.create(img_url: "none", hole_num:3, par:3, yardage:218, course: sky)
holefour = Hole.create(img_url: "none", hole_num:4, par:3, yardage:218, course: sky)
holefive = Hole.create(img_url: "none", hole_num:5, par:3, yardage:218, course: sky)
holesix = Hole.create(img_url: "none", hole_num:6, par:3, yardage:218, course: sky)
holeseven = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)
holeeight = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)
holenine = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)
holeten = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)
holeele = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)
holetwe = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)
holethir = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)
holefourth = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)
holefivith = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)
holesixth = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)
holeseventh = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)
holeeighth = Hole.create(img_url: "none", hole_num:7, par:3, yardage:218, course: sky)


friends = Group.create(name: "Bradley and Friends", num_members: 3)
other_group = Group.create(name: "Other Group", num_members: 3)

bradley = User.create(name:"Bradley", email:"bradley@gmail.com", username:"bcravens", password: "tommy")
jolie = User.create(name:"Jolie", email:"jolie@gmail.com", username:"jrosenthal")
ethan = User.create(name:"Ethan", email:"ethan@gmail.com", username:"ethanc")

bradleymem = Membership.create(user: bradley, group: friends)
joliemem = Membership.create(user: jolie, group: friends)
ethanmem = Membership.create(user: ethan, group: friends)

rob = User.create(name:"Rob", email:"rob@gmail.com", username:"rob")
joe = User.create(name:"Joe", email:"joe@gmail.com", username:"joe")
paul = User.create(name:"Paul", email:"paul@gmail.com", username:"paul")

robmem = Membership.create(user: rob, group: other_group)
joemem = Membership.create(user: joe, group: other_group)
paulmem = Membership.create(user: paul, group: other_group)

now = Time.now.to_datetime

event1 = Event.create(name: "Business Event", time: now, course: sky, group: friends)
event2 = Event.create(name: "Sunday Meetup", time: now, course: sky, group: other_group)

money1 = Bet.create(amount: 5, hole: holeone, course: sky, event: event1)
money2 = Bet.create(amount: 25, hole: holetwo, course: sky, event: event1)
money3 = Bet.create(amount: 20, hole: holethree, course: sky, event: event1)
money4 = Bet.create(amount: 15, hole: holefour, course: sky, event: event1)
money5 = Bet.create(amount: 10, hole: holefive, course: sky, event: event1)
money6 = Bet.create(amount: 5, hole: holesix, course: sky, event: event1)
money7 = Bet.create(amount: 5, hole: holeseven, course: sky, event: event1)
money8 = Bet.create(amount: 5, hole: holeeight, course: sky, event: event1)
money9 = Bet.create(amount: 25, hole: holenine, course: sky, event: event1)
money11 = Bet.create(amount: 20, hole: holeten, course: sky, event: event1)
money22 = Bet.create(amount: 15, hole: holeele, course: sky, event: event1)
money33 = Bet.create(amount: 10, hole: holetwe, course: sky, event: event1)
money44 = Bet.create(amount: 5, hole: holethir, course: sky, event: event1)
money55 = Bet.create(amount: 5, hole: holefourth, course: sky, event: event1)
money66 = Bet.create(amount: 5, hole: holefivith, course: sky, event: event1)
money77 = Bet.create(amount: 5, hole: holesixth, course: sky, event: event1)
money88 = Bet.create(amount: 5, hole: holeseventh, course: sky, event: event1)
money99 = Bet.create(amount: 5, hole: holeeighth, course: sky, event: event1)

money12 = Bet.create(amount: 5, hole: holeone, course: sky, event: event2)
money23 = Bet.create(amount: 25, hole: holetwo, course: sky, event: event2)
money34 = Bet.create(amount: 20, hole: holethree, course: sky, event: event2)
money45 = Bet.create(amount: 15, hole: holefour, course: sky, event: event2)
money56 = Bet.create(amount: 10, hole: holefive, course: sky, event: event2)
money67 = Bet.create(amount: 5, hole: holesix, course: sky, event: event2)
money78 = Bet.create(amount: 5, hole: holeseven, course: sky, event: event2)
money89 = Bet.create(amount: 5, hole: holeeight, course: sky, event: event2)
money98 = Bet.create(amount: 25, hole: holenine, course: sky, event: event2)
money87 = Bet.create(amount: 20, hole: holeten, course: sky, event: event2)
money76 = Bet.create(amount: 15, hole: holeele, course: sky, event: event2)
money65 = Bet.create(amount: 10, hole: holetwe, course: sky, event: event2)
money54 = Bet.create(amount: 5, hole: holethir, course: sky, event: event2)
money43 = Bet.create(amount: 5, hole: holefourth, course: sky, event: event2)
money32 = Bet.create(amount: 5, hole: holefivith, course: sky, event: event2)
money21 = Bet.create(amount: 5, hole: holesixth, course: sky, event: event2)
money111 = Bet.create(amount: 5, hole: holeseventh, course: sky, event: event2)
money222 = Bet.create(amount: 5, hole: holeeighth, course: sky, event: event2)

friends = Group.create(name: "Bradley and Friends", num_members: 3)
other_group = Group.create(name: "Other Group", num_members: 3)

bradley = User.create(name:"Bradley", email:"bradley@gmail.com", username:"bcravens", password: "tommy")
jolie = User.create(name:"Jolie", email:"jolie@gmail.com", username:"jrosenthal")
ethan = User.create(name:"Ethan", email:"ethan@gmail.com", username:"ethanc")

bradleymem = Membership.create(user: bradley, group: friends)
joliemem = Membership.create(user: jolie, group: friends)
ethanmem = Membership.create(user: ethan, group: friends)

rob = User.create(name:"Rob", email:"rob@gmail.com", username:"rob")
joe = User.create(name:"Joe", email:"joe@gmail.com", username:"joe")
paul = User.create(name:"Paul", email:"paul@gmail.com", username:"paul")

robmem = Membership.create(user: rob, group: other_group)
joemem = Membership.create(user: joe, group: other_group)
paulmem = Membership.create(user: paul, group: other_group)

event1 = Event.create(name: "Business Event", time: now, course: sky, group: friends)
event2 = Event.create(name: "Sunday Meetup", time: now, course: sky, group: other_group)

money1 = Bet.create(amount: 5, hole: holeone, course: sky, event: event1)
money2 = Bet.create(amount: 25, hole: holetwo, course: sky, event: event1)
money3 = Bet.create(amount: 20, hole: holethree, course: sky, event: event1)
money4 = Bet.create(amount: 15, hole: holefour, course: sky, event: event1)
money5 = Bet.create(amount: 10, hole: holefive, course: sky, event: event1)
money6 = Bet.create(amount: 5, hole: holesix, course: sky, event: event1)
money7 = Bet.create(amount: 5, hole: holeseven, course: sky, event: event1)
money8 = Bet.create(amount: 5, hole: holeeight, course: sky, event: event1)
money9 = Bet.create(amount: 25, hole: holenine, course: sky, event: event1)
money11 = Bet.create(amount: 20, hole: holeten, course: sky, event: event1)
money22 = Bet.create(amount: 15, hole: holeele, course: sky, event: event1)
money33 = Bet.create(amount: 10, hole: holetwe, course: sky, event: event1)
money44 = Bet.create(amount: 5, hole: holethir, course: sky, event: event1)
money55 = Bet.create(amount: 5, hole: holefourth, course: sky, event: event1)
money66 = Bet.create(amount: 5, hole: holefivith, course: sky, event: event1)
money77 = Bet.create(amount: 5, hole: holesixth, course: sky, event: event1)
money88 = Bet.create(amount: 5, hole: holeseventh, course: sky, event: event1)
money99 = Bet.create(amount: 5, hole: holeeighth, course: sky, event: event1)

money12 = Bet.create(amount: 5, hole: holeone, course: sky, event: event2)
money23 = Bet.create(amount: 25, hole: holetwo, course: sky, event: event2)
money34 = Bet.create(amount: 20, hole: holethree, course: sky, event: event2)
money45 = Bet.create(amount: 15, hole: holefour, course: sky, event: event2)
money56 = Bet.create(amount: 10, hole: holefive, course: sky, event: event2)
money67 = Bet.create(amount: 5, hole: holesix, course: sky, event: event2)
money78 = Bet.create(amount: 5, hole: holeseven, course: sky, event: event2)
money89 = Bet.create(amount: 5, hole: holeeight, course: sky, event: event2)
money98 = Bet.create(amount: 25, hole: holenine, course: sky, event: event2)
money87 = Bet.create(amount: 20, hole: holeten, course: sky, event: event2)
money76 = Bet.create(amount: 15, hole: holeele, course: sky, event: event2)
money65 = Bet.create(amount: 10, hole: holetwe, course: sky, event: event2)
money54 = Bet.create(amount: 5, hole: holethir, course: sky, event: event2)
money43 = Bet.create(amount: 5, hole: holefourth, course: sky, event: event2)
money32 = Bet.create(amount: 5, hole: holefivith, course: sky, event: event2)
money21 = Bet.create(amount: 5, hole: holesixth, course: sky, event: event2)
money111 = Bet.create(amount: 5, hole: holeseventh, course: sky, event: event2)
money222 = Bet.create(amount: 5, hole: holeeighth, course: sky, event: event2)

friends = Group.create(name: "Bradley and Friends", num_members: 3)
other_group = Group.create(name: "Other Group", num_members: 3)

bradley = User.create(name:"Bradley", email:"bradley@gmail.com", username:"bcravens", password: "tommy")
jolie = User.create(name:"Jolie", email:"jolie@gmail.com", username:"jrosenthal")
ethan = User.create(name:"Ethan", email:"ethan@gmail.com", username:"ethanc")

bradleymem = Membership.create(user: bradley, group: friends)
joliemem = Membership.create(user: jolie, group: friends)
ethanmem = Membership.create(user: ethan, group: friends)

rob = User.create(name:"Rob", email:"rob@gmail.com", username:"rob")
joe = User.create(name:"Joe", email:"joe@gmail.com", username:"joe")
paul = User.create(name:"Paul", email:"paul@gmail.com", username:"paul")

robmem = Membership.create(user: rob, group: other_group)
joemem = Membership.create(user: joe, group: other_group)
paulmem = Membership.create(user: paul, group: other_group)

event1 = Event.create(name: "Business Event", time: now, course: sky, group: friends)
event2 = Event.create(name: "Sunday Meetup", time: now, course: sky, group: other_group)

money1 = Bet.create(amount: 5, hole: holeone, course: sky, event: event1)
money2 = Bet.create(amount: 25, hole: holetwo, course: sky, event: event1)
money3 = Bet.create(amount: 20, hole: holethree, course: sky, event: event1)
money4 = Bet.create(amount: 15, hole: holefour, course: sky, event: event1)
money5 = Bet.create(amount: 10, hole: holefive, course: sky, event: event1)
money6 = Bet.create(amount: 5, hole: holesix, course: sky, event: event1)
money7 = Bet.create(amount: 5, hole: holeseven, course: sky, event: event1)
money8 = Bet.create(amount: 5, hole: holeeight, course: sky, event: event1)
money9 = Bet.create(amount: 25, hole: holenine, course: sky, event: event1)
money11 = Bet.create(amount: 20, hole: holeten, course: sky, event: event1)
money22 = Bet.create(amount: 15, hole: holeele, course: sky, event: event1)
money33 = Bet.create(amount: 10, hole: holetwe, course: sky, event: event1)
money44 = Bet.create(amount: 5, hole: holethir, course: sky, event: event1)
money55 = Bet.create(amount: 5, hole: holefourth, course: sky, event: event1)
money66 = Bet.create(amount: 5, hole: holefivith, course: sky, event: event1)
money77 = Bet.create(amount: 5, hole: holesixth, course: sky, event: event1)
money88 = Bet.create(amount: 5, hole: holeseventh, course: sky, event: event1)
money99 = Bet.create(amount: 5, hole: holeeighth, course: sky, event: event1)

money12 = Bet.create(amount: 5, hole: holeone, course: sky, event: event2)
money23 = Bet.create(amount: 25, hole: holetwo, course: sky, event: event2)
money34 = Bet.create(amount: 20, hole: holethree, course: sky, event: event2)
money45 = Bet.create(amount: 15, hole: holefour, course: sky, event: event2)
money56 = Bet.create(amount: 10, hole: holefive, course: sky, event: event2)
money67 = Bet.create(amount: 5, hole: holesix, course: sky, event: event2)
money78 = Bet.create(amount: 5, hole: holeseven, course: sky, event: event2)
money89 = Bet.create(amount: 5, hole: holeeight, course: sky, event: event2)
money98 = Bet.create(amount: 25, hole: holenine, course: sky, event: event2)
money87 = Bet.create(amount: 20, hole: holeten, course: sky, event: event2)
money76 = Bet.create(amount: 15, hole: holeele, course: sky, event: event2)
money65 = Bet.create(amount: 10, hole: holetwe, course: sky, event: event2)
money54 = Bet.create(amount: 5, hole: holethir, course: sky, event: event2)
money43 = Bet.create(amount: 5, hole: holefourth, course: sky, event: event2)
money32 = Bet.create(amount: 5, hole: holefivith, course: sky, event: event2)
money21 = Bet.create(amount: 5, hole: holesixth, course: sky, event: event2)
money111 = Bet.create(amount: 5, hole: holeseventh, course: sky, event: event2)
money222 = Bet.create(amount: 5, hole: holeeighth, course: sky, event: event2)

friends = Group.create(name: "Bradley and Friends", num_members: 3)
other_group = Group.create(name: "Other Group", num_members: 3)

bradley = User.create(name:"Bradley", email:"bradley@gmail.com", username:"bcravens", password: "tommy")
jolie = User.create(name:"Jolie", email:"jolie@gmail.com", username:"jrosenthal")
ethan = User.create(name:"Ethan", email:"ethan@gmail.com", username:"ethanc")

bradleymem = Membership.create(user: bradley, group: friends)
joliemem = Membership.create(user: jolie, group: friends)
ethanmem = Membership.create(user: ethan, group: friends)

rob = User.create(name:"Rob", email:"rob@gmail.com", username:"rob")
joe = User.create(name:"Joe", email:"joe@gmail.com", username:"joe")
paul = User.create(name:"Paul", email:"paul@gmail.com", username:"paul")

robmem = Membership.create(user: rob, group: other_group)
joemem = Membership.create(user: joe, group: other_group)
paulmem = Membership.create(user: paul, group: other_group)

event1 = Event.create(name: "Business Event", time: now, course: sky, group: friends)
event2 = Event.create(name: "Sunday Meetup", time: now, course: sky, group: other_group)

money1 = Bet.create(amount: 5, hole: holeone, course: sky, event: event1)
money2 = Bet.create(amount: 25, hole: holetwo, course: sky, event: event1)
money3 = Bet.create(amount: 20, hole: holethree, course: sky, event: event1)
money4 = Bet.create(amount: 15, hole: holefour, course: sky, event: event1)
money5 = Bet.create(amount: 10, hole: holefive, course: sky, event: event1)
money6 = Bet.create(amount: 5, hole: holesix, course: sky, event: event1)
money7 = Bet.create(amount: 5, hole: holeseven, course: sky, event: event1)
money8 = Bet.create(amount: 5, hole: holeeight, course: sky, event: event1)
money9 = Bet.create(amount: 25, hole: holenine, course: sky, event: event1)
money11 = Bet.create(amount: 20, hole: holeten, course: sky, event: event1)
money22 = Bet.create(amount: 15, hole: holeele, course: sky, event: event1)
money33 = Bet.create(amount: 10, hole: holetwe, course: sky, event: event1)
money44 = Bet.create(amount: 5, hole: holethir, course: sky, event: event1)
money55 = Bet.create(amount: 5, hole: holefourth, course: sky, event: event1)
money66 = Bet.create(amount: 5, hole: holefivith, course: sky, event: event1)
money77 = Bet.create(amount: 5, hole: holesixth, course: sky, event: event1)
money88 = Bet.create(amount: 5, hole: holeseventh, course: sky, event: event1)
money99 = Bet.create(amount: 5, hole: holeeighth, course: sky, event: event1)

money12 = Bet.create(amount: 5, hole: holeone, course: sky, event: event2)
money23 = Bet.create(amount: 25, hole: holetwo, course: sky, event: event2)
money34 = Bet.create(amount: 20, hole: holethree, course: sky, event: event2)
money45 = Bet.create(amount: 15, hole: holefour, course: sky, event: event2)
money56 = Bet.create(amount: 10, hole: holefive, course: sky, event: event2)
money67 = Bet.create(amount: 5, hole: holesix, course: sky, event: event2)
money78 = Bet.create(amount: 5, hole: holeseven, course: sky, event: event2)
money89 = Bet.create(amount: 5, hole: holeeight, course: sky, event: event2)
money98 = Bet.create(amount: 25, hole: holenine, course: sky, event: event2)
money87 = Bet.create(amount: 20, hole: holeten, course: sky, event: event2)
money76 = Bet.create(amount: 15, hole: holeele, course: sky, event: event2)
money65 = Bet.create(amount: 10, hole: holetwe, course: sky, event: event2)
money54 = Bet.create(amount: 5, hole: holethir, course: sky, event: event2)
money43 = Bet.create(amount: 5, hole: holefourth, course: sky, event: event2)
money32 = Bet.create(amount: 5, hole: holefivith, course: sky, event: event2)
money21 = Bet.create(amount: 5, hole: holesixth, course: sky, event: event2)
money111 = Bet.create(amount: 5, hole: holeseventh, course: sky, event: event2)
money222 = Bet.create(amount: 5, hole: holeeighth, course: sky, event: event2)

friends = Group.create(name: "Bradley and Friends", num_members: 3)
other_group = Group.create(name: "Other Group", num_members: 3)

bradley = User.create(name:"Bradley", email:"bradley@gmail.com", username:"bcravens", password: "tommy")
jolie = User.create(name:"Jolie", email:"jolie@gmail.com", username:"jrosenthal")
ethan = User.create(name:"Ethan", email:"ethan@gmail.com", username:"ethanc")

bradleymem = Membership.create(user: bradley, group: friends)
joliemem = Membership.create(user: jolie, group: friends)
ethanmem = Membership.create(user: ethan, group: friends)

rob = User.create(name:"Rob", email:"rob@gmail.com", username:"rob")
joe = User.create(name:"Joe", email:"joe@gmail.com", username:"joe")
paul = User.create(name:"Paul", email:"paul@gmail.com", username:"paul")

robmem = Membership.create(user: rob, group: other_group)
joemem = Membership.create(user: joe, group: other_group)
paulmem = Membership.create(user: paul, group: other_group)

event1 = Event.create(name: "Business Event", time: now, course: sky, group: friends)
event2 = Event.create(name: "Sunday Meetup", time: now, course: sky, group: other_group)

money1 = Bet.create(amount: 5, hole: holeone, course: sky, event: event1)
money2 = Bet.create(amount: 25, hole: holetwo, course: sky, event: event1)
money3 = Bet.create(amount: 20, hole: holethree, course: sky, event: event1)
money4 = Bet.create(amount: 15, hole: holefour, course: sky, event: event1)
money5 = Bet.create(amount: 10, hole: holefive, course: sky, event: event1)
money6 = Bet.create(amount: 5, hole: holesix, course: sky, event: event1)
money7 = Bet.create(amount: 5, hole: holeseven, course: sky, event: event1)
money8 = Bet.create(amount: 5, hole: holeeight, course: sky, event: event1)
money9 = Bet.create(amount: 25, hole: holenine, course: sky, event: event1)
money11 = Bet.create(amount: 20, hole: holeten, course: sky, event: event1)
money22 = Bet.create(amount: 15, hole: holeele, course: sky, event: event1)
money33 = Bet.create(amount: 10, hole: holetwe, course: sky, event: event1)
money44 = Bet.create(amount: 5, hole: holethir, course: sky, event: event1)
money55 = Bet.create(amount: 5, hole: holefourth, course: sky, event: event1)
money66 = Bet.create(amount: 5, hole: holefivith, course: sky, event: event1)
money77 = Bet.create(amount: 5, hole: holesixth, course: sky, event: event1)
money88 = Bet.create(amount: 5, hole: holeseventh, course: sky, event: event1)
money99 = Bet.create(amount: 5, hole: holeeighth, course: sky, event: event1)

money12 = Bet.create(amount: 5, hole: holeone, course: sky, event: event2)
money23 = Bet.create(amount: 25, hole: holetwo, course: sky, event: event2)
money34 = Bet.create(amount: 20, hole: holethree, course: sky, event: event2)
money45 = Bet.create(amount: 15, hole: holefour, course: sky, event: event2)
money56 = Bet.create(amount: 10, hole: holefive, course: sky, event: event2)
money67 = Bet.create(amount: 5, hole: holesix, course: sky, event: event2)
money78 = Bet.create(amount: 5, hole: holeseven, course: sky, event: event2)
money89 = Bet.create(amount: 5, hole: holeeight, course: sky, event: event2)
money98 = Bet.create(amount: 25, hole: holenine, course: sky, event: event2)
money87 = Bet.create(amount: 20, hole: holeten, course: sky, event: event2)
money76 = Bet.create(amount: 15, hole: holeele, course: sky, event: event2)
money65 = Bet.create(amount: 10, hole: holetwe, course: sky, event: event2)
money54 = Bet.create(amount: 5, hole: holethir, course: sky, event: event2)
money43 = Bet.create(amount: 5, hole: holefourth, course: sky, event: event2)
money32 = Bet.create(amount: 5, hole: holefivith, course: sky, event: event2)
money21 = Bet.create(amount: 5, hole: holesixth, course: sky, event: event2)
money111 = Bet.create(amount: 5, hole: holeseventh, course: sky, event: event2)
money222 = Bet.create(amount: 5, hole: holeeighth, course: sky, event: event2)
