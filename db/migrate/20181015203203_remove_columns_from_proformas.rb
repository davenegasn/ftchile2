class RemoveColumnsFromProformas < ActiveRecord::Migration[5.0]
  def change
  	remove_column :proformas, :nombre_cliente
  	remove_column :proformas, :apellidos_cliente
  	remove_column :proformas, :direccion_cliente
  	remove_column :proformas, :comuna_cliente
  	remove_column :proformas, :nombre_proveedor
  	remove_column :proformas, :direccion_proveedor
  	remove_column :proformas, :comuna_proveedor
  	remove_column :proformas, :id_producto
  	remove_column :proformas, :nombre_producto
  	remove_column :proformas, :cantidad_producto
  end
end
