5.times do
    User.create!(
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )
end

10.times do
    Topic.create!(
        title: Faker::Simpsons.character
    )
end
topics = Topic.all

20.times do
    Bookmark.create!(
        topic: topics.sample,
        url: Faker::Internet.domain_name
    )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} Topics created"
puts "#{Bookmark.count} Bookmarks created"