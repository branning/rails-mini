class Category < ActiveRecord::Base
	self.primary_key = 'category_id'
	has_many :item_categories
	has_many :items, through: :item_categories
end
