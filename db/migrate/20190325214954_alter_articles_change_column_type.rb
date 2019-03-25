class AlterArticlesChangeColumnType < ActiveRecord::Migration[5.0]
  def change
  	  change_column :articles, :precio, :decimal, using: 'precio::decimal', :precision => 8, :scale => 2
  end
end
