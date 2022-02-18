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

application1 = user1.applications.create! ({primary_field: "Word", secondary_field: "Part of Speech", background_color: "black", description: "This is a dictionary app", font: 12, display_theme: "List", img_url: "www.google.com", app_name: "English Dictionary"})
application2 = user1.applications.create! ({primary_field: "Building", secondary_field: "Unit", background_color: "green", description: "This is a building app", font: 14, display_theme: "Grid", img_url: "www.google.com", app_name: "Real Estate Directory"})
application3 = user2.applications.create! ({primary_field: "Food", secondary_field: "Ingredient", background_color: "pink,", description: "This is a food app", font: 20, display_theme: "Table", img_url: "www.youtube.com", app_name: "Grandma's Recipe Book"})

record1 = application1.records.create!({position: 2})
record2 = application2.records.create!({position: 1})
record3 = application2.records.create!({position: 3})
record4 = application1.records.create!({position: 3})
record5 = application1.records.create!({position: 3})
record6 = application2.records.create!({position: 2})


field1 = application1.fields.create!({field_name: "Word"})
field2 = application1.fields.create!({field_name: "Part of Speech"})
field3 = application2.fields.create!({field_name: "Building Name"})
field4 = application2.fields.create!({field_name: "Price"})

value1 = record1.values.create!({field_value: "Strawberry", field: field1})
value2 = record1.values.create!({field_value: "Noun", field: field2 })
value3 = record4.values.create!({field_value: "Lemon", field: field1})
value4 = record4.values.create!({field_value: "Noun", field: field2 })
value5 = record5.values.create!({field_value: "Pineapple", field: field1})
value6 = record5.values.create!({field_value: "Noun", field: field2 })

value11 = record2.values.create!({field_value: "Vancouver Mansion", field: field3})
value12 = record2.values.create!({field_value: 9999999, field: field4 })
value13 = record3.values.create!({field_value: "Calgary Apartment", field: field3})
value14 = record3.values.create!({field_value: 8888888, field: field4 })
value15 = record6.values.create!({field_value: "Toronto Basement", field: field3})
value16 = record6.values.create!({field_value: 7777777, field: field4 })