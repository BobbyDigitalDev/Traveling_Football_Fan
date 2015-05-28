class AddColumnStadiumBlurb < ActiveRecord::Migration
  def change

  	add_column :stadia, :stadium_blurb, :string
  	add_column :stadia, :city_blurb, :string
  	
  end
end
