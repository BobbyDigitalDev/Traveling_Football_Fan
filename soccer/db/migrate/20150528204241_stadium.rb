class Stadium < ActiveRecord::Migration
  def change

  	  create_table :stadia do |t|
      t.string :name
      t.integer :capacity
      t.string :city
      t.string :country
      t.string :home_team
      t.string :stadium_blurb
  	  t.string :city_blurb

      t.timestamps null: false
    end

  end
end
