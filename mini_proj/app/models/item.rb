class Item < ActiveRecord::Base
	self.primary_key = 'item_id'
	has_many :item_categories
	has_many :categories, through: :item_categories
	has_many :user_items
	has_many :users, through: :user_items
end
