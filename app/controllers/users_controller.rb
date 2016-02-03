class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def show
		@user = current_user
		@joined_on = @user.created_at.to_formatted_s(:short)
	end

	def edit
		
	end

	def create
		@user = User.create(user_params)
	end

	def update
		
	end

	def destroy
		
	end

	private

end