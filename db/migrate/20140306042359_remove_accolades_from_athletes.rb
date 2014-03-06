class RemoveAccoladesFromAthletes < ActiveRecord::Migration
  def change
    remove_column :athletes, :a_date
    remove_column :athletes, :a_place
    remove_column :athletes, :a_description
  end
end
