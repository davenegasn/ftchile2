class AddUnidadDeMedidaToArticles < ActiveRecord::Migration[5.0]
  def change
  	add_column :articles, :unidad_medida, :string
  end
end
