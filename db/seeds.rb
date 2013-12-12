# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Museum.create [
{
  name: "MoMA"
},
{
  name: "The Met"
},
{
  name: "The Louvre"
},
{
  name: "The Gug"
}
]

Artist.create [
{
  name: "Leonardo"
},
{
  name: "Raphael"
},
{
  name: "Michaelangelo"
},
{
  name: "Donatello"
}
]

Painting.create [
  {
    title: "Mona Lisa",
    artist_id: 1,
    museum_id: 3,
    url: "http://upload.wikimedia.org/wikipedia/commons/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg"
  },
  {
    title: "Sistine Chapel",
    artist_id: 3,
    museum_id: 2,
    url: "http://upload.wikimedia.org/wikipedia/commons/8/82/Sistina-interno.jpg"
  },
  {
    title: "Statue of David",
    artist_id: 2,
    museum_id: 4,
    url: "http://en.wikipedia.org/wiki/File:Michelangelo%27s_David.JPG"
  },
  {
    title: "St. John Statue",
    artist_id: 4,
    museum_id: 1,
    url: "http://upload.wikimedia.org/wikipedia/commons/d/d7/Michelangelo%27s_David.JPG"
  },
  {
    title: "Self Portrait",
    artist_id: 1,
    museum_id: 4,
    url: "http://upload.wikimedia.org/wikipedia/commons/f/f7/Francesco_Melzi_-_Portrait_of_Leonardo_-_WGA14795.jpg"
  }
]

