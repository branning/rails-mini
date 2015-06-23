# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



u1 = User.create(name: "Philip B")
u2 = User.create(name: "Brittany M")

i1 = Item.create(name: "26 Greenline Womens BC-704")
i2 = Item.create(name: "26'' Micargi Super M600")

c1 = Category.create(name: "Unicycles")
c2 = Category.create(name: "Motorized Bicycles (DIY)")
c3 = Category.create(name: "Women's Beach Cruisers")

i1.categories << [c1, c2]
i2.categories << [c1, c2, c3]

u1.items << [i1]
u2.items << [i2]
