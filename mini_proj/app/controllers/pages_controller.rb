class PagesController < ApplicationController
	def home
	end
	def admin
		@users = User.all
	end
end
