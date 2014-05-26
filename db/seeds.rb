user = User.create(email: 'orrett.davis@gmail.com', password: 'password', password_confirmation: 'password')

2.times {
  days_ago = (rand*10).days.ago

  user.metrics << Love.create(rating: rand(5)+1, note: Faker::Lorem.sentence(5), created_at: days_ago)
  user.metrics << Mental.create(rating: rand(5)+1, note: Faker::Lorem.sentence(5))
  user.metrics << Physical.create(rating: rand(5)+1, note: Faker::Lorem.sentence(5))
  user.metrics << Social.create(rating: rand(5)+1, note: Faker::Lorem.sentence(5))
  user.metrics << Work.create(rating: rand(5)+1, note: Faker::Lorem.sentence(5))


  user.love.last.update_attribute :created_at, days_ago
  user.mental.last.update_attribute :created_at, days_ago
  user.physical.last.update_attribute :created_at, days_ago
  user.social.last.update_attribute :created_at, days_ago
  user.work.last.update_attribute :created_at, days_ago
}






