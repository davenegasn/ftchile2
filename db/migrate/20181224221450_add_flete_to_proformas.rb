class AddFleteToProformas < ActiveRecord::Migration[5.0]
  def change
  	add_column :proformas, :flete, :float
  end
end
