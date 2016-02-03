class CreateDailyEntries < ActiveRecord::Migration
  def change
    create_table :daily_entries do |t|
      t.string :title
      t.text :body
      t.boolean :favorite
      t.integer :mood_rating
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
