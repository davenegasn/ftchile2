class RenameColumnComunaFromSupplier < ActiveRecord::Migration[5.0]
  def change
  	rename_column :suppliers, :comuna, :ubicacion
  end
end
