class AlterArticlesAddForeignKey < ActiveRecord::Migration[5.0]
  def change
  	add_reference :articles, :supplier, foreign_key: true
  end
end
