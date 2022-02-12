# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create(username: "Sam")
user2 = User.create(username: "Yan")
user3 = User.create(username: "Matt")

application1 = user1.applications.create! ({primary_field: "Word", secondary_field: "Part of Speech", background_color: "black", description: "This is a dictionary app", font: "Ariel", display_theme: "list", img_url: "www.google.com", app_name: "English Dictionary"})
application2 = user1.applications.create! ({primary_field: "building", secondary_field: "unit", background_color: "green", description: "This is a building app", font: "Ariel", display_theme: "grid", img_url: "www.google.com", app_name: "building dictionary"})
application3 = user2.applications.create! ({primary_field: "food", secondary_field: "ingredient", background_color: "pink,", description: "This is a food app", font: "Ariel", display_theme: "grid", img_url: "www.youtube.com", app_name: "recipe dictionary"})

record1 = application1.records.create!({position: 2})
record2 = application2.records.create!({position: 1})
record3 = application3.records.create!({position: 3})


field1 = application1.fields.create!({field_name: "Word"})
field2 = application1.fields.create!({field_name: "Part of Speech"})
field3 = application2.fields.create!({field_name: "Building Name"})
field4 = application2.fields.create!({field_name: "Unit"})

value1 = record1.values.create!({field_value: "Strawberry", field: field1})
value2 = record1.values.create!({field_value: "Noun", field: field2 })