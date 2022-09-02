puts "🌱 Seeding spices..."
#
# Author.destroy_all
# Author.reset_pk_sequence
# Note.destroy_all
# Note.reset_pk_sequence

# Seed your database here
jane = Author.create(name: "Jane Doe")
john = Author.create(name: "John Smith")
peter = Author.create(name: "Peter Knight")


Note.create(title: "Jane's First Note", content: "The cake is a lie.", author_id: jane.id)
Note.create(title: "Jane's Second Note", content: "I need to buy groceries to meal prep.", author_id: jane.id)
Note.create(title: "John's First Note", content: "Password: 123456", author_id: john.id)
Note.create(title: "John's Second Note", content: "Cranberry juice is good for cleansing your system.", author_id: john.id)
Note.create(title: "John's Third Note", content: "My favorite food is ramen.", author_id: john.id)
Note.create(title: "Peter's First Note", content: "Reminder: Important meeting tomorrow at 10am.", author_id: peter.id)

puts "✅ Done seeding!"
