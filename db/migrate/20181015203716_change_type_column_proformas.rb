class ChangeTypeColumnProformas < ActiveRecord::Migration[5.0]
  def change
  	change_column :proformas, :total, :integer, using: 'total::integer'
  end
end
