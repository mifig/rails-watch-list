# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require "json"

url_movies = "http://tmdb.lewagon.com/movie/top_rated"
url_poster_base = "https://image.tmdb.org/t/p/original/"

movies_serialized = URI.open(url_movies).read
movies = JSON.parse(movies_serialized)

List.destroy_all
Movie.destroy_all

movies["results"].each do |movie|
  Movie.create(
    title: movie["title"],
    overview: movie["overview"],
    poster_url: "#{url_poster_base}/#{movie["poster_path"]}",
    rating: movie["vote_average"]
  )
end
