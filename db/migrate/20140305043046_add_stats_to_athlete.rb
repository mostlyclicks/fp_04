class AddStatsToAthlete < ActiveRecord::Migration
  def change
    add_column :athletes, :stat_title, :string
    add_column :athletes, :stat_data, :text
  end
end
