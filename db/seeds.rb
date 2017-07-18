# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Show.delete_all
User.delete_all

Show0 = {
  "title": "The Great British Bake Off",
  "series": 7,
  "description": "Master bakers Mary & Paul and the incomparable presenting duo of Mel & Sue are back for another interesting series about baking cakes.",
  "image": "placeholder.jpg",
  "programmeID": "b013pqnm" 
}

Show1 = {
  "title": "Game Of Thrones",
  "series": 7,
  "description": "Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss. It is an adaptation of A Song of Ice and Fire, George R. R. Martin's series of fantasy novels, the first of which is A Game of Thrones.",
  "image": "placeholder.jpg",
  "programmeID": "gam30fth0n35" 
}

Show2 = {
  "title": "The Great British Bake Off",
  "series": 9,
  "description": "The series, centred on the sport of robot combat, involved teams of amateur and professional roboteers operating their own constructed 
  robots to fight against each other in both friendly and tournament matches, whilst also avoiding arena hazards and more powerful \"House Robots\", which were not bound by the same weight or weapon limits as the contestants. Earlier series included assault and trial courses for competing robots before they were ceased from the first \"Extreme\" series onwards",
  "image": "placeholder.jpg",
  "programmeID": "Ki11em@11" 
}

fav1 = Show.create( Show0)
fav2 = Show.create( Show1)
fav3 = Show.create( Show2)

u1 = User.create( { name:"Daniel", last_name:"Garrido" } )
u2 = User.create( { name:"John", last_name:"Polite" } )

Favourite.create( { user:u1, show:fav1 } )
Favourite.create( { user:u1, show:fav3 } )
Favourite.create( { user:u2, show:fav1 } )
Favourite.create( { user:u2, show:fav2 } )
