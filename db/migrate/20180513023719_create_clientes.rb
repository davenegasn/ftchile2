class CreateClientes < ActiveRecord::Migration[5.0]
  def up
    create_table :clientes do |t|
    	t.string "nombre"
    	t.string "apellido_paterno"
    	t.string "apellido_materno"
    	t.string "direccion"
    	t.string "telefono"
    	t.string "email"
    	
      	t.timestamps
    end
  end

  def down
  	drop_table :clientes
  end 
end
