class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :stadium_id
      t.string :team1_name
      t.string :team2_name
      t.date :date
      t.integer :itinerary_id

      t.timestamps null: false
    end
  end
end
