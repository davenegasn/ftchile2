class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
    	t.string "nombre"
    	t.string "apellidos"
    	t.string "email", default: "", null: false
    	t.string "username", null: false
    	t.string "password_digest"
    	t.timestamps
    end
  end
  def down
  	drop_table :users
  end 
end
