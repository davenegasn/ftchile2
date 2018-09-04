class CreateArticles < ActiveRecord::Migration[5.0]
  def up
    create_table :articles do |t|
    	t.string "nombre"
  		t.string "precio"
  		t.string "euro"
  		t.string "dolar"
  		t.text "descripcion"
      t.timestamps
    end
  end

  def down
  	drop_table :articles
  end 
  
end
