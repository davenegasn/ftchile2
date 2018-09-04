class AlterSuuppliersAddForeignKeyComunas < ActiveRecord::Migration[5.0]
  def change
  	add_reference :suppliers, :comuna, foreign_key: true
  end
end
