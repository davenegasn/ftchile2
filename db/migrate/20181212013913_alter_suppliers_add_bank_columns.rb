class AlterSuppliersAddBankColumns < ActiveRecord::Migration[5.0]
  def change
  	add_column :suppliers, :banco_nombre, :string
  	add_column :suppliers, :banco_iban, :string
  	add_column :suppliers, :banco_swift, :string
  	add_column :suppliers, :banco_direccion, :string
  	add_column :suppliers, :banco_abi, :string
  	add_column :suppliers, :banco_cab, :string
  end
end
