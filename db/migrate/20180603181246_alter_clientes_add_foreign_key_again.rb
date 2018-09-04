class AlterClientesAddForeignKeyAgain < ActiveRecord::Migration[5.0]
  def change
  	add_reference :clientes, :comuna, foreign_key: true
  end
end
