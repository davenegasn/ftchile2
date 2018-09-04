# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180831043933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "nombre"
    t.string   "precio"
    t.string   "euro"
    t.string   "dolar"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "supplier_id"
    t.index ["supplier_id"], name: "index_articles_on_supplier_id", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.text     "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "comuna_id"
    t.index ["comuna_id"], name: "index_clientes_on_comuna_id", using: :btree
  end

  create_table "comunas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proformas", force: :cascade do |t|
    t.string   "nombre_cliente"
    t.string   "apellidos_cliente"
    t.string   "direccion_cliente"
    t.string   "comuna_cliente"
    t.string   "nombre_proveedor"
    t.string   "direccion_proveedor"
    t.string   "comuna_proveedor"
    t.string   "id_producto"
    t.string   "nombre_producto"
    t.string   "cantidad_producto"
    t.string   "subtotal_producto"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.text     "logo"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "comuna_id"
    t.index ["comuna_id"], name: "index_suppliers_on_comuna_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "email",           default: "", null: false
    t.string   "username",                     null: false
    t.string   "password_digest"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_foreign_key "articles", "suppliers"
  add_foreign_key "clientes", "comunas"
  add_foreign_key "suppliers", "comunas"
end
