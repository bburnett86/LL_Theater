# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@admin = Admin.create!(username: "admin", password: "password")

theater = @admin.movie_theaters.create!(name: "Movie on Rails")

8.times do
  theater.movies.create!(
    name: Faker::Hipster.unique.sentence,
    pic_url: Faker::Avatar.image,
    starring: Faker::GameOfThrones.character,
    tagline: Faker::StarWars.quote,
    plot: Faker::Hipster.paragraph,
    hours: rand(1..3),
    minutes: rand(0..60)
  )
end

10.times do
  theater.auditoria.create!(
    capacity: rand(50..300)
  )
end

time_now = Time.now

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
  start: Time.local(2017, 2, 22, 11),
  finish: @noon_today - 1.hours + @movie1.hours.hours + @movie1.minutes.minutes
)

Showtime.create!(
  auditorium_id: 1,
  movie_id: 1,
  price: 8.50,
  start: @noon_today + 3.hours,
  finish: @noon_today + 3.hours + @movie1.hours.hours + @movie1.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 1,
  movie_id: 1,
  price: 8.50,
  start: @noon_today + 7.hours,
  finish: @noon_today + 7.hours + @movie1.hours.hours + @movie1.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 2,
  movie_id: 2,
  price: 8.50,
  start: @noon_today - 45.minutes,
  finish: @noon_today - 45.minutes + @movie2.hours.hours + @movie2.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 2,
  movie_id: 2,
  price: 8.50,
  start: @noon_today + 3.hours + 15.minutes,
  finish: @noon_today + 3.hours + 15.minutes + @movie2.hours.hours + @movie2.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 2,
  movie_id: 2,
  price: 8.50,
  start: @noon_today + 7.hours + 15.minutes,
  finish: @noon_today + 7.hours + 15.minutes + @movie2.hours.hours + @movie2.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 3,
  movie_id: 3,
  price: 8.50,
  start: @noon_today - 30.minutes,
  finish: @noon_today - 30.minutes + @movie3.hours.hours + @movie3.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 3,
  movie_id: 3,
  price: 8.50,
  start: @noon_today + 3.hours + 30.minutes,
  finish: @noon_today + 3.hours + 30.minutes + @movie3.hours.hours + @movie3.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 3,
  movie_id: 3,
  price: 8.50,
  start: @noon_today + 7.hours + 30.minutes,
  finish: @noon_today + 7.hours + 30.minutes + @movie3.hours.hours + @movie3.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 4,
  movie_id: 4,
  price: 8.50,
  start: @noon_today - 1.hours,
  finish: @noon_today - 1.hours + @movie4.hours.hours + @movie4.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 4,
  movie_id: 4,
  price: 8.50,
  start: @noon_today + 3.hours,
  finish: @noon_today + 3.hours + @movie4.hours.hours + @movie4.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 4,
  movie_id: 4,
  price: 8.50,
  start: @noon_today + 7.hours,
  finish: @noon_today + 7.hours + @movie4.hours.hours + @movie4.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 5,
  movie_id: 5,
  price: 8.50,
  start: @noon_today - 45.minutes,
  finish: @noon_today - 45.minutes + @movie5.hours.hours + @movie5.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 5,
  movie_id: 5,
  price: 8.50,
  start: @noon_today + 3.hours + 15.minutes,
  finish: @noon_today + 3.hours + 15.minutes + @movie5.hours.hours + @movie5.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 5,
  movie_id: 5,
  price: 8.50,
  start: @noon_today + 7.hours + 15.minutes,
  finish: @noon_today + 7.hours + 15.minutes + @movie5.hours.hours + @movie5.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 6,
  movie_id: 6,
  price: 8.50,
  start: @noon_today - 30.minutes,
  finish: @noon_today - 30.minutes + @movie6.hours.hours + @movie6.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 6,
  movie_id: 6,
  price: 8.50,
  start: @noon_today + 3.hours + 30.minutes,
  finish: @noon_today + 3.hours + 30.minutes + @movie6.hours.hours + @movie6.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 6,
  movie_id: 6,
  price: 8.50,
  start: @noon_today + 7.hours + 30.minutes,
  finish: @noon_today + 7.hours + 30.minutes + @movie6.hours.hours + @movie6.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 7,
  movie_id: 7,
  price: 8.50,
  start: @noon_today - 1.hours,
  finish: @noon_today - 1.hours + @movie7.hours.hours + @movie7.minutes.minutes,
)


Showtime.create!(
  auditorium_id: 7,
  movie_id: 7,
  price: 8.50,
  start: @noon_today + 3.hours,
  finish: @noon_today + 3.hours + @movie7.hours.hours + @movie7.minutes.minutes,
)


Showtime.create!(
  auditorium_id: 7,
  movie_id: 7,
  price: 8.50,
  start: @noon_today + 7.hours,
  finish: @noon_today + 7.hours + @movie7.hours.hours + @movie7.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 8,
  movie_id: 8,
  price: 8.50,
  start: @noon_today - 30.minutes,
  finish: @noon_today - 30.minutes + @movie8.hours.hours + @movie8.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 8,
  movie_id: 8,
  price: 8.50,
  start: @noon_today + 3.hours + 30.minutes,
  finish: @noon_today + 3.hours + 30.minutes + @movie8.hours.hours + @movie8.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 8,
  movie_id: 8,
  price: 8.50,
  start: @noon_today + 7.hours + 30.minutes,
  finish: @noon_today + 7.hours + 30.minutes + @movie8.hours.hours + @movie8.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 9,
  movie_id: 8,
  price: 8.50,
  start: @noon_today - 1.hours,
  finish: @noon_today - 1.hours + @movie8.hours.hours + @movie8.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 9,
  movie_id: 8,
  price: 8.50,
  start: @noon_today + 3.hours,
  finish: @noon_today + 3.hours + @movie8.hours.hours + @movie8.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 9,
  movie_id: 8,
  price: 8.50,
  start: @noon_today + 7.hours,
  finish: @noon_today + 7.hours + @movie8.hours.hours + @movie8.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 10,
  movie_id: 1,
  price: 8.50,
  start: @noon_today - 30.minutes,
  finish: @noon_today - 30.minutes + @movie1.hours.hours + @movie1.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 10,
  movie_id: 1,
  price: 8.50,
  start: @noon_today + 3.hours + 30.minutes,
  finish: @noon_today + 3.hours + 30.minutes + @movie1.hours.hours + @movie1.minutes.minutes,
)

Showtime.create!(
  auditorium_id: 10,
  movie_id: 1,
  price: 8.50,
  start: @noon_today + 7.hours + 30.minutes,
  finish: @noon_today + 7.hours + 30.minutes,
)

showtimes = Showtime.all

showtimes.each do |showtime|
  show_price = showtime.price
  show_id = showtime.id
  movie_id = showtime.movie_id
  sold_seats = showtime.auditorium.capacity - 3
  sold_seats.times do
    showtime.receipts.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      cc_info: Faker::Business.credit_card_number,
      cc_exp_date: Faker::Business.credit_card_expiry_date,
      sale_price: show_price,
      showtime_id: show_id,
      movie_id: movie_id,
      seller_id: 1
    )
  end
end