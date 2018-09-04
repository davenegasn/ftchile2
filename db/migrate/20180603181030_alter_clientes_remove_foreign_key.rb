class AlterClientesRemoveForeignKey < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :clientes, :comunas, foreign_key: true
  end
end
