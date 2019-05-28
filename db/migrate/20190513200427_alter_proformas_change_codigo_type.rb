class AlterProformasChangeCodigoType < ActiveRecord::Migration[5.0]
  def change
  	change_column :proformas, :codigo, :string
  end
end
