class AddImageToSuppliers < ActiveRecord::Migration[5.0]
  def change
    add_column :suppliers, :image, :string
  end
end
