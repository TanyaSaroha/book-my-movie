multiplex = Multiplex.create(name: "MyTheatre")
screen1 = Screen.create(name: "Screen 1", multiplex_id: multiplex.id)
screen2 = Screen.create(name: "Screen 2", multiplex_id: multiplex.id)
screen3 = Screen.create(name: "Screen 3", multiplex_id: multiplex.id)

["Captain America",  "Iron Man", "Black Panther", "Thor", "Black Widow",
  "Spiderman Homecoming"].each{ |movie_name| Movie.create(name: movie_name) }


Show.create(screen_id: screen1.id, movie_id: Movie.first.id, date: Date.today, time_slot: "afternoon")
Show.create(screen_id: screen1.id, movie_id: Movie.second.id, date: Date.today, time_slot: "evening")
Show.create(screen_id: screen1.id, movie_id: Movie.third.id, date: Date.today, time_slot: "night")

Show.create(screen_id: screen2.id, movie_id: Movie.fourth.id, date: Date.today, time_slot: "afternoon")
Show.create(screen_id: screen2.id, movie_id: Movie.fifth.id, date: Date.today, time_slot: "evening")
Show.create(screen_id: screen2.id, movie_id: Movie.last.id, date: Date.today, time_slot: "night")

Show.create(screen_id: screen3.id, movie_id: Movie.second.id, date: Date.today, time_slot: "afternoon")
Show.create(screen_id: screen3.id, movie_id: Movie.last.id, date: Date.today, time_slot: "evening")
Show.create(screen_id: screen3.id, movie_id: Movie.first.id, date: Date.today, time_slot: "night")
