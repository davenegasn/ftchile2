class AlterProformasAddEnvioColumns < ActiveRecord::Migration[5.0]
  def change
  	add_column :proformas, :peso_bruto, :float
  	add_column :proformas, :peso_neto, :float
  	add_column :proformas, :volumen, :integer
  	add_column :proformas, :embalaje, :string
  	add_column :proformas, :observacion, :string
  end
end
