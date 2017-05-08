require 'faker'

10.times do
    User.create!(
        email: Faker::Internet.email,
        password: Faker::Internet.password(8)
    )
end

    demo = User.create!(
        email: 'blocster@bloc.io',
        password: 'qwerty'
    )
    

5.times do
    Item.create!(
        name: Faker::Hipster.sentence(3)
    )
end

puts "Seeding is complete."
puts "#{User.count} users created"
puts "#{Item.count} items created"