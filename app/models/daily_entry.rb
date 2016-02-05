class DailyEntry < ActiveRecord::Base
	belongs_to :user
	def format_date
			created_at.strftime("%m/%d/%Y")
	end	
end
