class AddColumnToArticleProformas < ActiveRecord::Migration[5.0]
  def change
  	add_column :article_proformas, :cantidad, :integer
  end
end
