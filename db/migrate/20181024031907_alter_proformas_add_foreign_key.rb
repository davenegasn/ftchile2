class AlterProformasAddForeignKey < ActiveRecord::Migration[5.0]
  def change
  	add_reference :proformas, :cliente, foreign_key: true
  	add_reference :proformas, :supplier, foreign_key: true
  end
end
