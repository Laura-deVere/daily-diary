class DailyEntriesController < ApplicationController
	before_action :set_daily_entry, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit, :update, :destroy, :show]

	def index
		@daily_entries = DailyEntry.all
	end

	def show
		
	end

	def edit
		
	end

	def new
		@daily_entry = DailyEntry.new
	end

	def create
		@daily_entry = DailyEntry.create(daily_entry_params)
		redirect_to users_show_path
	end

	def update
		@daily_entry.update(daily_entry_params)
	end

	def destroy
		@daily_entry.destroy	
	end

	private

	def daily_entry_params
		params.require(:daily_entry).permit(:body, :title, :mood_rating).merge(user: current_user)
	end

	def set_daily_entry
		begin
			@daily_entry = DailyEntry.find(params[:id])
		rescue 
			flash[:notice] = "Unavailable"
			redirect_to daily_entry_path
		end
	end
end
