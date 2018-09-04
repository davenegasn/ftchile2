class CreateSuppliers < ActiveRecord::Migration[5.0]
  def up
    create_table :suppliers do |t|
    	t.string "nombre"
  		t.string "direccion"
  		t.string "telefono"
  		t.string "email"
  		t.text 	"logo"
  		t.text "descripcion"
  		t.timestamps
    end
  end

  def down
  	drop_table :suppliers
  end 
end
