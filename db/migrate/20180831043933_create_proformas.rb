class CreateProformas < ActiveRecord::Migration[5.0]
  def change
    create_table :proformas do |t|
    	t.string "nombre_cliente"
    	t.string "apellidos_cliente"
    	t.string "direccion_cliente"
    	t.string "comuna_cliente"
    	t.string "nombre_proveedor"
    	t.string "direccion_proveedor"
    	t.string "comuna_proveedor"
    	t.string "id_producto"
    	t.string "nombre_producto"
    	t.string "cantidad_producto"
    	t.string "subtotal_producto"
      	t.timestamps
    end
  end
end
