class AddTipoFleteToProformas < ActiveRecord::Migration[5.0]
  def change
  	add_column :proformas, :tipo_flete, :string
  end
end
