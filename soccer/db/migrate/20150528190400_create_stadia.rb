class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.string :name
      t.integer :capacity
      t.string :city
      t.string :country
      t.string :home_team

      t.timestamps null: false
    end
  end
end
