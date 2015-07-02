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
User.destroy_all
Clan.destroy_all


Group.create([
  { name: 'Ben Franklin Labs' },
  { name: 'Snip Salon Software' },
  { name: 'GloboChem' },
  { name: 'TechCorp' },
])

puts 'seeding consoles'

c1 = Console.create({
    name: 'Xbox One'
  })
c2 = Console.create({
    name: 'PS4'
  })

puts 'done'
puts 'seeding games'

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

puts 'done'
puts 'seeding ladders'

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

puts 'done'

puts 'seeding clans'
30.times do |n|

  ladder = [l1,l2,l3,l4]
  ladder_id = ladder.shuffle.pop

  Clan.create(
    name: Faker::Company.name,
    ladder_id: ladder_id.id,
    description: Faker::Lorem.paragraph 
    )
end

puts 'done'

puts 'seeding users'
100.times do |n|
  clan = Clan.all
  clan = clan.shuffle.pop
  first_name = Faker::Name.first_name
  email = Faker::Internet.safe_email(first_name)
  user = User.create(
    name: first_name,
    email: email,
    image: Faker::Avatar.image,
    password: 'password',
    password_confirmation: 'password',
  )

  clan.users << user

end
puts 'done'


# Console.create({
#   name:
#   })