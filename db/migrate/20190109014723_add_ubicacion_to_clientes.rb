class AddUbicacionToClientes < ActiveRecord::Migration[5.0]
  def change
  	add_column :clientes, :ubicacion, :string
  end
end
