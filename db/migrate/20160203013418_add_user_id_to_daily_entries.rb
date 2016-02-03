class AddUserIdToDailyEntries < ActiveRecord::Migration
  def change
    add_column :daily_entries, :user_id, :integer
  end
end
