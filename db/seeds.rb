10.times do 
  User.create( username: Faker::HarryPotter.character,
    email: Faker::Internet.email,
    password: 'password')
end

30.times do
  id = rand(1..10)
  Post.create( title: Faker::HarryPotter.location,
    body: Faker::HarryPotter.quote,
    author_id: id )
end
