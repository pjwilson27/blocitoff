50.times do
    User.create!(
        email: Faker::Internet.email,
        password: Faker::Internet.password(8)
    )
end

50.times do
    Item.create!(
        name: Faker::Hipster.sentence(3)
    )
end