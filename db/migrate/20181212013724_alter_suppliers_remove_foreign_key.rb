class AlterSuppliersRemoveForeignKey < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :suppliers, :comuna, foreign_key: true
  end
end
