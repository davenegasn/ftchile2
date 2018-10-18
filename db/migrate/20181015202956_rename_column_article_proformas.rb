class RenameColumnArticleProformas < ActiveRecord::Migration[5.0]
  def change
  	rename_column :article_proformas, :cantidad, :quantity
  end
end
