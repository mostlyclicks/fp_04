class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :name
      t.text :about
      t.text :video_embed

      t.timestamps
    end
  end
end
