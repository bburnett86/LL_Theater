# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@user = User.create!(username: "admin", password: "password")


8.times do
  Movie.create!(
    name: "The " + Faker::Hacker.unique.noun + " " + Faker::Hacker.unique.verb,
    pic_url: Faker::Avatar.image,
    starring: Faker::Superhero.name,
    tagline: Faker::HarryPotter.quote,
    plot: Faker::Hipster.paragraph,
    hours: rand(1..2),
    minutes: rand(0..59)
  )
end

10.times do
  Auditorium.create!(
    capacity: rand(50..300)
  )
end

time_now = DateTime.now

@noon_today = time_now.noon

@movie1 = Movie.find(1)
@movie2 = Movie.find(2)
@movie3 = Movie.find(3)
@movie4 = Movie.find(4)
@movie5 = Movie.find(5)
@movie6 = Movie.find(6)
@movie7 = Movie.find(7)
@movie8 = Movie.find(8)

Showtime.create!(
  auditorium_id: 1,
  movie_id: 1,
  price: 8.50,
  start: @noon_today + 4.hours,
  finish: @noon_today + 4.hours + (@movie1.hours).hours + (@movie1.minutes).minutes
)

Showtime.create!(
  auditorium_id: 1,
  movie_id: 1,
  price: 8.50,
  start: @noon_today + 8.hours,
  finish: @noon_today + 8.hours + (@movie1.hours).hours + (@movie1.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 1,
  movie_id: 1,
  price: 8.50,
  start: @noon_today,
  finish: @noon_today + (@movie1.hours).hours + (@movie1.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 2,
  movie_id: 2,
  price: 8.50,
  start: @noon_today + 4.hours + 45.minutes,
  finish: @noon_today + 4.hours + 45.minutes + (@movie2.hours).hours + (@movie2.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 2,
  movie_id: 2,
  price: 8.50,
  start: @noon_today + 8.hours + 15.minutes,
  finish: @noon_today + 8.hours + 15.minutes + (@movie2.hours).hours + (@movie2.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 2,
  movie_id: 2,
  price: 8.50,
  start: @noon_today + 15.minutes,
  finish: @noon_today + 15.minutes + (@movie2.hours).hours + (@movie2.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 3,
  movie_id: 3,
  price: 8.50,
  start: @noon_today + 4.hours + 30.minutes,
  finish: @noon_today + 4.hours + 30.minutes + (@movie3.hours).hours + (@movie3.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 3,
  movie_id: 3,
  price: 8.50,
  start: @noon_today + 8.hours + 30.minutes,
  finish: @noon_today + 8.hours + 30.minutes + (@movie3.hours).hours + (@movie3.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 3,
  movie_id: 3,
  price: 8.50,
  start: @noon_today + 30.minutes,
  finish: @noon_today + 30.minutes + (@movie3.hours).hours + (@movie3.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 4,
  movie_id: 4,
  price: 8.50,
  start: @noon_today + 4.hours,
  finish: @noon_today + 4.hours + (@movie4.hours).hours + (@movie4.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 4,
  movie_id: 4,
  price: 8.50,
  start: @noon_today + 8.hours,
  finish: @noon_today + 8.hours + (@movie4.hours).hours + (@movie4.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 4,
  movie_id: 4,
  price: 8.50,
  start: @noon_today,
  finish: @noon_today + (@movie4.hours).hours + (@movie4.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 5,
  movie_id: 5,
  price: 8.50,
  start: @noon_today + 4.hours + 45.minutes,
  finish: @noon_today + 4.hours + 45.minutes + (@movie5.hours).hours + (@movie5.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 5,
  movie_id: 5,
  price: 8.50,
  start: @noon_today + 8.hours + 15.minutes,
  finish: @noon_today + 8.hours + 15.minutes + (@movie5.hours).hours + (@movie5.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 5,
  movie_id: 5,
  price: 8.50,
  start: @noon_today + 15.minutes,
  finish: @noon_today + 15.minutes + (@movie5.hours).hours + (@movie5.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 6,
  movie_id: 6,
  price: 8.50,
  start: @noon_today + 4.hours + 30.minutes,
  finish: @noon_today + 4.hours + 30.minutes + (@movie6.hours).hours + (@movie6.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 6,
  movie_id: 6,
  price: 8.50,
  start: @noon_today + 8.hours + 30.minutes,
  finish: @noon_today + 8.hours + 30.minutes + (@movie6.hours).hours + (@movie6.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 6,
  movie_id: 6,
  price: 8.50,
  start: @noon_today + 30.minutes,
  finish: @noon_today + 30.minutes + (@movie6.hours).hours + (@movie6.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 7,
  movie_id: 7,
  price: 8.50,
  start: @noon_today + 4.hours,
  finish: @noon_today + 4.hours + (@movie7.hours).hours + (@movie7.minutes).minutes,
)


Showtime.create!(
  auditorium_id: 7,
  movie_id: 7,
  price: 8.50,
  start: @noon_today + 8.hours,
  finish: @noon_today + 8.hours + (@movie7.hours).hours + (@movie7.minutes).minutes,
)


Showtime.create!(
  auditorium_id: 7,
  movie_id: 7,
  price: 8.50,
  start: @noon_today,
  finish: @noon_today + (@movie7.hours).hours + (@movie7.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 8,
  movie_id: 8,
  price: 8.50,
  start: @noon_today + 4.hours + 30.minutes,
  finish: @noon_today + 4.hours + 30.minutes + (@movie8.hours).hours + (@movie8.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 8,
  movie_id: 8,
  price: 8.50,
  start: @noon_today + 8.hours + 30.minutes,
  finish: @noon_today + 8.hours + 30.minutes + (@movie8.hours).hours + (@movie8.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 8,
  movie_id: 8,
  price: 8.50,
  start: @noon_today + 30.minutes,
  finish: @noon_today + 30.minutes + (@movie8.hours).hours + (@movie8.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 9,
  movie_id: 8,
  price: 8.50,
  start: @noon_today + 2.hours,
  finish: @noon_today + 2.hours + (@movie8.hours).hours + (@movie8.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 9,
  movie_id: 8,
  price: 8.50,
  start: @noon_today + 6.hours,
  finish: @noon_today + 6.hours + (@movie8.hours).hours + (@movie8.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 9,
  movie_id: 8,
  price: 8.50,
  start: @noon_today + 10.hours,
  finish: @noon_today + 10.hours + (@movie8.hours).hours + (@movie8.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 10,
  movie_id: 1,
  price: 8.50,
  start: @noon_today + 2.hours + 30.minutes,
  finish: @noon_today + 2.hours + 30.minutes + (@movie1.hours).hours + (@movie1.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 10,
  movie_id: 1,
  price: 8.50,
  start: @noon_today + 6.hours + 30.minutes,
  finish: @noon_today + 6.hours + 30.minutes + (@movie1.hours).hours + (@movie1.minutes).minutes,
)

Showtime.create!(
  auditorium_id: 10,
  movie_id: 1,
  price: 8.50,
  start: @noon_today + 10.hours + 30.minutes,
  finish: @noon_today + 10.hours + 30.minutes + (@movie1.hours).hours + (@movie1.minutes).minutes,
)

showtimes = Showtime.all



showtimes.each do |showtime|
  show_id = showtime.id
  movie_id = showtime.movie_id
  sold_seats = showtime.auditorium.capacity - 3
  sold_seats.times do
    showtime.receipts.create!(
      name: Faker::GameOfThrones.character,
      email: Faker::Internet.email,
      cc_info: Faker::Business.credit_card_number.delete("-"),
      cc_exp_date: Faker::Business.credit_card_expiry_date,
      showtime_id: show_id,
    )
  end
end