class AddSportToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :sport, :string
  end
end
