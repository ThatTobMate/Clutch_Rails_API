# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Group.destroy_all
Console.destroy_all
Ladder.destroy_all
Game.destroy_all


Group.create([
  { name: 'Ben Franklin Labs' },
  { name: 'Snip Salon Software' },
  { name: 'GloboChem' },
  { name: 'TechCorp' },
])

c1 = Console.create({
    name: 'Xbox One'
  })
c2 = Console.create({
    name: 'PS4'
  })

g1 = Game.create({
    name: 'FIFA 15',
    console_id: c1.id
  })

g2 = Game.create({
    name: 'FIFA 15',
    console_id: c2.id
  })

g3 = Game.create({
    name: 'Call Of Duty Advanced Warfare',
    console_id: c1.id
  })

g4 = Game.create({
    name: 'Call Of Duty Advanced Warfare',
    console_id: c2.id
  })

l1 = Ladder.create({
    name: 'Singles Ladder',
    game_id: g1.id
  })

l2 = Ladder.create({
    name: 'Singles Ladder',
    game_id: g2.id
  })
l3 = Ladder.create({
    name: 'Doubles Ladder',
    game_id: g3.id
  })

l4 = Ladder.create({
    name: 'Doubles Ladder',
    game_id: g4.id
  })

# Console.create({
#   name:
#   })