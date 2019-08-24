4.times do
  artist = Artist.create(
    name: Faker::Music.band, 
    avatar: Faker::Games::WorldOfWarcraft.quote
  )
  40.times do
    artist.tunes.create(
    title: Faker::Music::GratefulDead.song,
    album: Faker::Music.album,
    release_date: Faker::Date.between(from: 200.years.ago, to: Date.today),
    lyrics: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    board_id: Faker::Number.between(from: 1, to: 10)
    )
  end
end