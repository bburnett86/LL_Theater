### Welcome To Movies On Rails
##### Macro:
* Auditorium
* Movie
* Showtime
* Receipt
* User/Session
* Receipt Mailer

##### Admin Info:
username: "admin"
password: "password"

##### Auditorium

* Needs to have a seat capacity.

* has many showtimes

##### Showtime

* Needs to have price

* Needs to have start/finish times

* Should validate if showtime slot is available

* Should validate if seats are available for showtime.

* Belongs to Movie

* Belongs to Auditorium

* Movie - Aud many to many join table.

* Has many receipts.

##### Movie

* Needs a name

* Needs to track length

##### Receipt

* Needs to store name and email

* DateTime objects for start & finish times

* Record CC info

* Belongs to Showtime

* Should validate CC Exp Date

* Should validate if tickets are available for a specific showtime.

* Should be responsible for holding methods related to total sales and sales by movie.

##### User

* Store and validate username and encrypted password (BCrypt)

* Use BCrypt sessions to validate route navigation

* If you can use logged_in? properly there should be no reason to create admin view pages.

##### Receipt Mailer

* Utilized Rails Action Mailer in collaboration with figaro

* Update environment files

* Store UN/Password on Figaro

* Test repeatedly with google and heroku logs.

##### Stumbling blocks

* Philosophically I'm not sure whether or not I should have added a Movie Theaters class. It would have allowed for Franchising as well as opened it up to use GoogleMaps to find nearest location from ones planted in Database.

* Working with time objects are way less fun than I thought. Mostly the updating and creating portions, but otherwise it was nice to get to use those.

* I'm not sure how anyone will be able to use this website if I don't reseed the Heroku Database everyday.

####### Schema Design Included in file mvp_schema