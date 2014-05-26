user = User.create(email: 'orrett.davis@gmail.com', password: 'password', password_confirmation: 'password')


5.times {
  user.metrics << Love.create(rating: rand(5)+1, note: Faker::Lorem.sentence(5))
  user.metrics << Mental.create(rating: rand(5)+1, note: Faker::Lorem.sentence(5))
  user.metrics << Physical.create(rating: rand(5)+1, note: Faker::Lorem.sentence(5))
  user.metrics << Social.create(rating: rand(5)+1, note: Faker::Lorem.sentence(5))
  user.metrics << Work.create(rating: rand(5)+1, note: Faker::Lorem.sentence(5))

  days_ago = (rand*10).days.ago

  user.metrics.each do |m|
    m.update_attributes(created_at: days_ago)
  end

}


