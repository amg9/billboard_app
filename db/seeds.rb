5.times do
  Artist.create(
    name: Faker:FunnyName.name, 
    avatar: Faker::Games::WorldOfWarcraft.quote
  )
end