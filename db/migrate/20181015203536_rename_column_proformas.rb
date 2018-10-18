class RenameColumnProformas < ActiveRecord::Migration[5.0]
  def change
  	rename_column :proformas, :subtotal_producto, :total
  end
end
