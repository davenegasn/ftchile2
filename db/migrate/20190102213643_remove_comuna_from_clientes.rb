class RemoveComunaFromClientes < ActiveRecord::Migration[5.0]
  def change
  	remove_column :clientes, :comuna
  end
end
