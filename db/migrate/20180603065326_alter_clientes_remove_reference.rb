class AlterClientesRemoveReference < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :clientes, :comunas, index: true
  end
end
