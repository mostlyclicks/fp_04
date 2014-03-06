class AddAccoladesTextToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :accolades_text, :text
  end
end
