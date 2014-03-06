class AddAccoladesToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :a_date, :date
    add_column :athletes, :a_place, :string
    add_column :athletes, :a_description, :text
  end
end
