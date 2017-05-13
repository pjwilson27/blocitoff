require 'faker'

10.times do
    User.create!(
        email: Faker::Internet.email,
        password: Faker::Internet.password(8),
        confirmed_at: Time.now
    )
end
    

5.times do
    Item.create!(
        name: Faker::Hipster.sentence(3)
    )
end

User.find_or_create_by(email: "blocster@bloc.io", password: "qwerty", confirmed_at: Time.now)

puts "Seeding is complete."
puts "#{User.count} users created"
puts "#{Item.count} items created"