class PagesController < ApplicationController
	def about
		@user_count = User.count
		@item_count = Item.count
		@category_count = Category.count
	end
end
