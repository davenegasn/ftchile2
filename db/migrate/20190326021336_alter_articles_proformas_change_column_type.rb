class AlterArticlesProformasChangeColumnType < ActiveRecord::Migration[5.0]
  def change
  	change_column :article_proformas, :subtotal, :decimal, using: 'subtotal::decimal', :precision => 8, :scale => 2
  end
end
