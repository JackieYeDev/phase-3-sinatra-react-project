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


Note.create(title: "", content: "", author_id: jane.id)
Note.create(title: "", content: "", author_id: jane.id)
Note.create(title: "", content: "", author_id: john.id)
Note.create(title: "", content: "", author_id: john.id)
Note.create(title: "", content: "", author_id: john.id)
Note.create(title: "", content: "", author_id: peter.id)

puts "✅ Done seeding!"
