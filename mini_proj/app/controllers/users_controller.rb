class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def show
		@user = User.find(params[:id])
		@items = @user.items
		@categories = @items.inject({}) do |categories, item|
			categories[item] = item.categories
			categories
		end
		# add it if any category overlaps
		@recommendations = []
		Item.all do |item|
			@recommendations << item if item.categories.intersect(@categories)
										#and item not in @items
		end

	end
end
