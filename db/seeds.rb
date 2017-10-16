
15.times do
    Topic.create!(
        title: Faker::Simpsons.character,
    )
end

5.times do
    User.create!(
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )
end

puts "Seed finished"
puts "#{Topic.count} Topics created"
puts "#{User.count} users created"