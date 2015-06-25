class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def show
		@user = User.find(params[:id])
		@items = @user.items
		# lambdas on rails, amirite
		@recommended_items = @items.map {|item| item.categories}.flatten.uniq.map {|category| category.items }.flatten.group_by{|item| item}.map {|k, v| [k, v.length]}.sort {|a,b| b[1] <=> a[1]}
		# remove the items that were already purchased
		@recommended_items.reject!{|pair| @items.include?(pair[0])}
	end
end
