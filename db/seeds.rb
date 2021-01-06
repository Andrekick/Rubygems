User.create!(email: 'admin@lol.com', password: 'adminko', password_confirmation: 'adminko')

30.times do
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    user_id: User.first.id
  }])
end
