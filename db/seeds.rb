# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Create main test user
User.create!(name: "Test User", email: "test@test.com", password: "password123", password_confirmation: "password123", admin: true)

# Bulk generate test users

99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@testuser.org"
    password = "password123"
    User.create!(name: name, email: email, password: password, password_confirmation: password)
end

# Generate example snapshots
users = User.order(:created_at).take(5)
40.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.snapshots.create!(content: content) }
end

users = User.all
user = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }