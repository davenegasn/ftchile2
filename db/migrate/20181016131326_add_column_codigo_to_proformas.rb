class AddColumnCodigoToProformas < ActiveRecord::Migration[5.0]
  def change
  	add_column :proformas, :codigo, :integer
  end
end
