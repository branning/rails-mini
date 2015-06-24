# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(user_id: 10, name: "Philip B")
u2 = User.create(user_id: 20, name: "Brittany M")

i1 = Item.create(item_id: 1, name: "26 Greenline Womens BC-704")
i2 = Item.create(item_id: 2, name: "26'' Micargi Super M600")

c1 = Category.create(category_id: 1, name: "Unicycles")
c2 = Category.create(category_id: 2, name: "Motorized Bicycles (DIY)")
c3 = Category.create(category_id: 3, name: "Women's Beach Cruisers")


ic1 = ItemCategory.create(item_id: 1, category_id: 1)
ic1 = ItemCategory.create(item_id: 1, category_id: 2)
ic1 = ItemCategory.create(item_id: 2, category_id: 1)
ic1 = ItemCategory.create(item_id: 2, category_id: 2)
ic1 = ItemCategory.create(item_id: 2, category_id: 3)

ui1 = UserItem.create(user_id: 10, item_id: 1)
ui1 = UserItem.create(user_id: 20, item_id: 2)
