class AddGpaToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :gpa_1, :float
    add_column :athletes, :gpa_2, :float
    add_column :athletes, :gpa_3, :float
    add_column :athletes, :gpa_4, :float
  end
end
