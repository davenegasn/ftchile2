class AlterClientesRemoveComuna < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :clientes, :comuna, foreign_key: true
  end
end
