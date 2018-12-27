class AlterSuppliersAddColumnComuna < ActiveRecord::Migration[5.0]
  def change
  	add_column :suppliers, :comuna, :string
  end
end
