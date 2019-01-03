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

ActiveRecord::Schema.define(version: 20190103012330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_proformas", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "proforma_id"
    t.integer  "subtotal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "quantity"
    t.index ["article_id", "proforma_id"], name: "index_article_proformas_on_article_id_and_proforma_id", using: :btree
  end

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

  create_table "articles_proformas", force: :cascade do |t|
    t.integer  "total"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "article_id"
    t.integer  "proforma_id"
    t.index ["article_id"], name: "index_articles_proformas_on_article_id", using: :btree
    t.index ["proforma_id"], name: "index_articles_proformas_on_proforma_id", using: :btree
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
    t.string   "ubicacion"
  end

  create_table "comunas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proformas", force: :cascade do |t|
    t.integer  "total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "codigo"
    t.integer  "cliente_id"
    t.integer  "supplier_id"
    t.float    "peso_bruto"
    t.float    "peso_neto"
    t.integer  "volumen"
    t.string   "embalaje"
    t.string   "observacion"
    t.float    "flete"
    t.string   "tipo_flete"
    t.string   "condicion_pago"
    t.string   "plazo_entrega"
    t.index ["cliente_id"], name: "index_proformas_on_cliente_id", using: :btree
    t.index ["supplier_id"], name: "index_proformas_on_supplier_id", using: :btree
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.text     "logo"
    t.text     "descripcion"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "image"
    t.string   "ubicacion"
    t.string   "banco_nombre"
    t.string   "banco_iban"
    t.string   "banco_swift"
    t.string   "banco_direccion"
    t.string   "banco_abi"
    t.string   "banco_cab"
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
  add_foreign_key "articles_proformas", "articles"
  add_foreign_key "articles_proformas", "proformas"
  add_foreign_key "proformas", "clientes"
  add_foreign_key "proformas", "suppliers"
end
