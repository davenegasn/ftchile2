class CreateCities < ActiveRecord::Migration[5.0]
  def up
    create_table :cities do |t|
    	t.text "nombre"
      	t.timestamps
    end
  end
  def down
  	drop_top :cities
  end 
end
