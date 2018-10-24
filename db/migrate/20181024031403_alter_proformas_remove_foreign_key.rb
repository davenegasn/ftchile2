class AlterProformasRemoveForeignKey < ActiveRecord::Migration[5.0]
  def change
  	remove_column :proformas, :clientes_id, foreign_key: true
  	remove_column :proformas, :supplier_id, foreign_key: true
  end
end
