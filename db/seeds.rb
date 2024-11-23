User.create!(email_address: 'test@example.com', password: 'test@example.com')

Tip.destroy_all

# Enum values for `best_time`
BEST_TIMES = Tip.best_times.keys

# Create 20 tips
20.times do
  Tip.create!(
    title: Faker::Food.dish, # Generates a random food dish name
    content: Faker::Food.description, # Generates a random food description
    best_time: BEST_TIMES.sample # Randomly picks one of the defined enum values
  )
end
