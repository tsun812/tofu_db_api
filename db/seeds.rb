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

application1 = user1.applications.create! ({primary_field: "Word", secondary_field: "Color", background_color: "black", description: "This is a fruit dictionary app", font: 12, display_theme: "List", img_url: "https://images.unsplash.com/photo-1491841651911-c44c30c34548?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8b2xkJTIwYm9va3N8ZW58MHx8MHx8&w=1000&q=80", app_name: "Fruit Dictionary"})
application2 = user1.applications.create! ({primary_field: "Building Name", secondary_field: "Price", background_color: "green", description: "This is a building app", font: 14, display_theme: "Card", img_url: "https://luxurylaunches.com/wp-content/uploads/2021/09/1000-year-old-castle-on-sale-6.jpg", app_name: "Real Estate Directory"})
application3 = user2.applications.create! ({primary_field: "Event", secondary_field: "Bread", background_color: "pink,", description: "This is a food app", font: 20, display_theme: "Table", img_url: "https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2F84f922d0-9bfe-11e8-9b62-17ec317258a6.jpg?crop=768%2C432%2C0%2C40", app_name: "Grandma's Recipe Book"})

record1 = application1.records.create!({position: 2})
record2 = application2.records.create!({position: 1})
record3 = application2.records.create!({position: 3})
record4 = application1.records.create!({position: 3})
record5 = application1.records.create!({position: 3})
record6 = application2.records.create!({position: 2})
record7 = application3.records.create!({position: 1})
record8 = application3.records.create!({position: 1})
record9 = application1.records.create!({position: 1})
record10 = application2.records.create!({position: 1})
record11 = application1.records.create!({position: 1})
record12 = application1.records.create!({position: 1})
record13 = application1.records.create!({position: 1})
record14 = application1.records.create!({position: 1})
record15 = application2.records.create!({position: 1})
record16 = application1.records.create!({position: 1})
record17 = application1.records.create!({position: 1})
record18 = application1.records.create!({position: 1})
record19 = application1.records.create!({position: 1})


field1 = application1.fields.create!({field_name: "Word"})
field2 = application1.fields.create!({field_name: "Origin"})
field5 = application1.fields.create!({field_name: "Classification"})
field6 = application1.fields.create!({field_name: "Color"})
field7 = application1.fields.create!({field_name: "Price($) per kg"})
field3 = application2.fields.create!({field_name: "Building Name"})
field4 = application2.fields.create!({field_name: "Price"})
field11 = application2.fields.create!({field_name: "Location"})
field12 = application2.fields.create!({field_name: "Rooms"})
field13 = application2.fields.create!({field_name: "Dealer"})
field14 = application2.fields.create!({field_name: "Availability"})
field15 = application2.fields.create!({field_name: "Number of garage"})
field16 = application2.fields.create!({field_name: "Safety 1 to 10"})
field17 = application3.fields.create!({field_name: "Event"})
field18 = application3.fields.create!({field_name: "Bread"})
field19 = application3.fields.create!({field_name: "Noodle"})
field20 = application3.fields.create!({field_name: "Dessert"})
field21 = application3.fields.create!({field_name: "Rice"})
field22 = application3.fields.create!({field_name: "Barbeque"})
field23 = application3.fields.create!({field_name: "Drink"})


value1 = record1.values.create!({field_value: "Strawberry", field: field1})
value2 = record1.values.create!({field_value: "Europe", field: field2 })
value3 = record4.values.create!({field_value: "Lemon", field: field1})
value4 = record4.values.create!({field_value: "Northwest India", field: field2 })
value5 = record5.values.create!({field_value: "Pineapple", field: field1})
value6 = record5.values.create!({field_value: "South America", field: field2 })
value7 = record5.values.create!({field_value: "Fragaria", field: field5 })
value8 = record4.values.create!({field_value: "Citrus", field: field5})
value9 = record1.values.create!({field_value: "Ananas", field: field5})
value10 = record1.values.create!({field_value: "Red", field: field6})
value49 = record4.values.create!({field_value: "Yellow", field: field6})
value50 = record5.values.create!({field_value: "Yellow", field: field6})
value51 = record1.values.create!({field_value: 3, field: field7})
value52 = record4.values.create!({field_value: 5, field: field7})
value53 = record5.values.create!({field_value: 7, field: field7})
value54 = record9.values.create!({field_value: "Lime", field: field1})
value55 = record9.values.create!({field_value: "South America", field: field2})
value56 = record9.values.create!({field_value: "Citrus", field: field5})
value57 = record9.values.create!({field_value: "Lime", field: field6})
value58 = record9.values.create!({field_value: 1, field: field7})
value67 = record11.values.create!({field_value: "Apple", field: field1})
value68 = record11.values.create!({field_value: "Europe", field: field2})
value69 = record11.values.create!({field_value: "Malus", field: field5})
value70 = record11.values.create!({field_value: "Red", field: field6})
value71 = record11.values.create!({field_value: 5, field: field7})
value72 = record12.values.create!({field_value: "Pear", field: field1})
value73 = record12.values.create!({field_value: "China", field: field2})
value74 = record12.values.create!({field_value: "Pyrus", field: field5})
value75 = record12.values.create!({field_value: "Yellow", field: field6})
value76 = record12.values.create!({field_value: 7, field: field7})
value77 = record13.values.create!({field_value: "Cherry", field: field1})
value78 = record13.values.create!({field_value: "Turkey", field: field2})
value79 = record13.values.create!({field_value: "Cerasus", field: field5})
value80 = record13.values.create!({field_value: "Red", field: field6})
value81 = record13.values.create!({field_value: 8, field: field7})
value82 = record14.values.create!({field_value: "Banana", field: field1})
value83 = record14.values.create!({field_value: "Southeast Asia", field: field2})
value84 = record14.values.create!({field_value: "Musa", field: field5})
value85 = record14.values.create!({field_value: "Yellow", field: field6})
value86 = record14.values.create!({field_value: 2, field: field7})
value95 = record16.values.create!({field_value: "Muskmelon", field: field1})
value96 = record16.values.create!({field_value: "Northwest India", field: field2})
value97 = record16.values.create!({field_value: "Cucumis", field: field5})
value98 = record16.values.create!({field_value: "Lime", field: field6})
value99 = record16.values.create!({field_value: 8, field: field7})
value100 = record17.values.create!({field_value: "Orange", field: field1})
value101 = record17.values.create!({field_value: "China", field: field2})
value102 = record17.values.create!({field_value: "Citrus", field: field5})
value103 = record17.values.create!({field_value: "Orange", field: field6})
value104 = record17.values.create!({field_value: 5, field: field7})
value105 = record18.values.create!({field_value: "Durian", field: field1})
value106 = record18.values.create!({field_value: "Southeast Asia", field:field2})
value107 = record18.values.create!({field_value: "Durio", field: field5})
value108 = record18.values.create!({field_value: "Yellow", field: field6})
value109 = record18.values.create!({field_value: 9, field: field7})
value110 = record19.values.create!({field_value: "Fig", field: field1})
value111 = record19.values.create!({field_value: "Turkey", field: field2})
value112 = record19.values.create!({field_value: "Ficus", field: field5})
value113 = record19.values.create!({field_value: "Red", field: field6})
value114 = record19.values.create!({field_value: 7, field: field7})

value11 = record2.values.create!({field_value: "Vancouver Mansion", field: field3})
value12 = record2.values.create!({field_value: 9999999, field: field4 })
value13 = record3.values.create!({field_value: "Calgary Apartment", field: field3})
value14 = record3.values.create!({field_value: 8888888, field: field4 })
value15 = record6.values.create!({field_value: "Toronto Basement", field: field3})
value16 = record6.values.create!({field_value: 7777777, field: field4 })
value17 = record2.values.create!({field_value: "Vancouver", field: field11})
value18 = record3.values.create!({field_value: "Calgary", field: field11})
value19 = record6.values.create!({field_value: "Toronto", field: field11})
value20 = record2.values.create!({field_value: 5, field: field12})
value21 = record3.values.create!({field_value: 10, field: field12})
value22 = record6.values.create!({field_value: 15, field: field12})
value23 = record2.values.create!({field_value: "Sam Leung", field: field13})
value24 = record3.values.create!({field_value: "Yan Sun", field: field13})
value25 = record6.values.create!({field_value: "Matt Kim", field: field13})
value26 = record2.values.create!({field_value: "Soon Available", field: field14})
value27 = record3.values.create!({field_value: "Sold", field: field14})
value28 = record6.values.create!({field_value: "Available", field: field14})
value29 = record2.values.create!({field_value: 1, field: field15})
value30 = record3.values.create!({field_value: 3, field: field15})
value31 = record6.values.create!({field_value: 5, field: field15})
value32 = record2.values.create!({field_value: 4, field: field16})
value33 = record3.values.create!({field_value: 2, field: field16})
value34 = record6.values.create!({field_value: 1, field: field16})
value59 = record10.values.create!({field_value: "Seaweed house", field: field3})
value60 = record10.values.create!({field_value: 10000000, field: field4})
value61 = record10.values.create!({field_value: "Vancouver", field: field11})
value62 = record10.values.create!({field_value: 10, field: field12})
value63 = record10.values.create!({field_value: "Yan sun", field: field13})
value64 = record10.values.create!({field_value: "Available", field: field14})
value65 = record10.values.create!({field_value: 5, field: field15})
value66 = record10.values.create!({field_value: 8, field: field16})
value87 = record15.values.create!({field_value: "London House" , field: field3})
value88 = record15.values.create!({field_value: 200000, field: field4})
value89 = record15.values.create!({field_value: "Calgary", field: field11})
value90 = record15.values.create!({field_value: 2, field: field12})
value91 = record15.values.create!({field_value: "Sam Leung", field: field13})
value92 = record15.values.create!({field_value: "Sold", field: field14})
value93 = record15.values.create!({field_value: 5, field: field15})
value94 = record15.values.create!({field_value: 10, field: field16})

value47 = record7.values.create!({field_value: "Wedding", field: field17})
value48 = record8.values.create!({field_value: "Funeral", field: field17})
value35 = record7.values.create!({field_value: "Focaccia", field: field18})
value36 = record8.values.create!({field_value: "Ciabatta", field: field18})
value37 = record7.values.create!({field_value: "Pene", field: field19})
value38 = record8.values.create!({field_value: "Linguine", field: field19})
value39 = record7.values.create!({field_value: "Tiramisu", field: field20})
value40 = record8.values.create!({field_value: "Biscotti", field: field20})
value41 = record7.values.create!({field_value: "Szechuan fried rice", field: field21})
value42 = record8.values.create!({field_value: "Viryani", field: field21})
value43 = record7.values.create!({field_value: "Asado", field: field22})
value44 = record8.values.create!({field_value: "Bulgogi", field: field22})
value45 = record7.values.create!({field_value: "Absinthe", field: field23})
value46 = record8.values.create!({field_value: "Vodka Martini(shaken not stirred)", field:field23})




