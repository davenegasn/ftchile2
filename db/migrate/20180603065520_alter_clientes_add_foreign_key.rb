class AlterClientesAddForeignKey < ActiveRecord::Migration[5.0]
  def change
  	add_reference :clientes, :comunas, foreign_key: true
  end
end
