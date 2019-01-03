class AddPlazoAndCondicionToProformas < ActiveRecord::Migration[5.0]
  def change
  	add_column :proformas, :condicion_pago, :string
  	add_column :proformas, :plazo_entrega, :string
  end
end
