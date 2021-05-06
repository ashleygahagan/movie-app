require "http"

system "clear"

puts "Welcome to the movie app!"

response = HTTP.get("http://localhost:3000/all_movies")

movies = response.parse

p movies