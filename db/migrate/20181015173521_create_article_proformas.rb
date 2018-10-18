class CreateArticleProformas < ActiveRecord::Migration[5.0]
  def up
    create_table :article_proformas do |t|
    	t.integer "article_id"
    	t.integer "proforma_id"
    	t.integer "subtotal"
      t.timestamps
    end
    add_index("article_proformas", ['article_id', 'proforma_id'])
  end
  def down 
  	drop_table :article_proformas
  end 
end
