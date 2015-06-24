class User < ActiveRecord::Base
	self.primary_key = 'user_id'
	has_many :user_items
	has_many :items, through: :user_items
end
