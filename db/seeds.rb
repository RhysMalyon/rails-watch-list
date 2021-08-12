require 'open-uri'
Movie.destroy_all
# List.destroy_all

# the Le Wagon copy of the API
url = 'http://tmdb.lewagon.com/movie/top_rated'
response = JSON.parse(URI.open(url).read)

response['results'].each do |movie_hash|
  puts
  p movie_hash
  # create an instance with the hash
  # Movie.create!(
  #   poster_url: "https://image.tmdb.org/t/p/w500" + movie_hash['poster_path']
  #   ...
  # )
end
