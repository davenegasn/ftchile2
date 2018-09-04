class AlterClientes < ActiveRecord::Migration[5.0]
  def change
  	add_reference :clientes, :comunas, index: true
  end
end
