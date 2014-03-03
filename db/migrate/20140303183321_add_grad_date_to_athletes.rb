class AddGradDateToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :grad_date, :date
  end
end
