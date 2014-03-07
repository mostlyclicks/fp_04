class AddGenInfoToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :birthdate, :date
    add_column :athletes, :weight, :float
    add_column :athletes, :height, :string
  end
end