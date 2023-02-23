# require 'faker'

# 10.times do
#   movie = Movie.create(title: Faker::Name.name, overview: Faker::Address.full_address, poster_url: Faker::Internet.username, rating: rand(1..10))

#   10.times do
#     list = List.create(name: Faker::Name.name)

#     10.times do
#       Bookmark.create(comment: Faker::Name.name, list_id: list.id, movie_id: movie.id)
#     end
#   end
# end
