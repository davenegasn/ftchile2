class CreateComunas < ActiveRecord::Migration[5.0]
  def up
    create_table :comunas do |t|
    	t.string "nombre"
      	t.timestamps
    end
  end
  def down
  	drop_table :comunas
  end 
end
