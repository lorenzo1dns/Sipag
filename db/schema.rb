# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20130814042553) do

  create_table "beneficiaries", force: true do |t|
    t.string   "name"
    t.text     "direccion"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coins", force: true do |t|
    t.string   "moneda"
    t.string   "pais"
    t.string   "simbolo"
    t.float    "valorLocal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "distributors", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "makers", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "pais"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_products", force: true do |t|
    t.string   "name"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "descripcion"
    t.string   "presentacion"
    t.integer  "tipo_product_id"
    t.string   "ingredienteActivo"
    t.text     "compatibilidad"
    t.string   "modoAccion"
    t.string   "toxicidad"
    t.string   "antidoto"
    t.integer  "maker_id"
    t.integer  "distributor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "uso"
    t.index ["tipo_product_id"], :name => "k__products_tipo_product_id"
    t.index ["maker_id"], :name => "k__products_maker_id"
    t.index ["distributor_id"], :name => "k__products_distributor_id"
    t.index ["distributor_id"], :name => "fk__products_distributor_id"
    t.index ["maker_id"], :name => "fk__products_maker_id"
    t.index ["tipo_product_id"], :name => "fk__products_tipo_product_id"
    t.foreign_key ["distributor_id"], "distributors", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_products_distributor_id"
    t.foreign_key ["maker_id"], "makers", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_products_maker_id"
    t.foreign_key ["tipo_product_id"], "tipo_products", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_products_tipo_product_id"
  end

  create_table "doses", force: true do |t|
    t.string   "cultivo"
    t.string   "problema"
    t.string   "metodoAplicacion"
    t.string   "dosis"
    t.text     "observacion"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["product_id"], :name => "fk__doses_product_id"
    t.foreign_key ["product_id"], "products", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_doses_product_id"
  end

  create_table "elements", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", force: true do |t|
    t.integer  "beneficiary_id"
    t.date     "fecha"
    t.string   "tipoEntrada"
    t.integer  "salida"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["beneficiary_id"], :name => "fk__entries_beneficiary_id"
    t.foreign_key ["beneficiary_id"], "beneficiaries", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_entries_beneficiary_id"
  end

  create_table "entry_products", force: true do |t|
    t.integer  "entry_id"
    t.integer  "product_id"
    t.float    "cantidad"
    t.string   "unidad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "valorUnidad"
    t.index ["product_id"], :name => "fk__entry_products_product_id"
    t.index ["entry_id"], :name => "fk__entry_products_entry_id"
    t.foreign_key ["entry_id"], "entries", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_entry_products_entry_id"
    t.foreign_key ["product_id"], "products", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_entry_products_product_id"
  end

  create_table "formulations", force: true do |t|
    t.integer  "element_id"
    t.integer  "product_id"
    t.string   "porcentaje"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["product_id"], :name => "fk__formulations_product_id"
    t.index ["element_id"], :name => "fk__formulations_element_id"
    t.foreign_key ["element_id"], "elements", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_formulations_element_id"
    t.foreign_key ["product_id"], "products", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_formulations_product_id"
  end

  create_table "inventaries", force: true do |t|
    t.integer  "product_id"
    t.string   "unidad"
    t.float    "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "valorUnidad"
    t.index ["product_id"], :name => "fk__inventaries_product_id"
    t.foreign_key ["product_id"], "products", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_inventaries_product_id"
  end

  create_table "invoices", force: true do |t|
    t.integer  "entry_id"
    t.integer  "distributor_id"
    t.date     "fecha"
    t.date     "fechaVencimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "total"
    t.float    "totalLempiras"
    t.index ["distributor_id"], :name => "fk__invoices_distributor_id"
    t.index ["entry_id"], :name => "fk__invoices_entry_id"
    t.foreign_key ["distributor_id"], "distributors", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_invoices_distributor_id"
    t.foreign_key ["entry_id"], "entries", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_invoices_entry_id"
  end

  create_table "invoice_products", force: true do |t|
    t.integer  "invoice_id"
    t.integer  "product_id"
    t.float    "cantidad"
    t.float    "precio"
    t.integer  "coin_id"
    t.float    "total"
    t.float    "totalLempiras"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unidad"
    t.string   "valorUnidad"
    t.index ["coin_id"], :name => "fk__invoice_products_coin_id"
    t.index ["product_id"], :name => "fk__invoice_products_product_id"
    t.index ["invoice_id"], :name => "fk__invoice_products_invoice_id"
    t.foreign_key ["coin_id"], "coins", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_invoice_products_coin_id"
    t.foreign_key ["invoice_id"], "invoices", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_invoice_products_invoice_id"
    t.foreign_key ["product_id"], "products", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_invoice_products_product_id"
  end

  create_table "regions", force: true do |t|
    t.string   "name"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lots", force: true do |t|
    t.string   "name"
    t.text     "descripcion"
    t.float    "area"
    t.string   "unidadmedida"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["region_id"], :name => "fk__lots_region_id"
    t.foreign_key ["region_id"], "regions", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_lots_region_id"
  end

  create_table "plagues", force: true do |t|
    t.string   "name"
    t.text     "descripcion",         limit: 255
    t.string   "tipoPlaga"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.text     "danio"
  end

  create_table "plagues_products", force: true do |t|
    t.integer  "plague_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["product_id"], :name => "fk__plagues_products_product_id"
    t.index ["plague_id"], :name => "fk__plagues_products_plague_id"
    t.foreign_key ["plague_id"], "plagues", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_plagues_products_plague_id"
    t.foreign_key ["product_id"], "products", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_plagues_products_product_id"
  end

  create_table "sicks", force: true do |t|
    t.string   "name"
    t.text     "descripcion"
    t.string   "familia"
    t.text     "danio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "sicks_products", force: true do |t|
    t.integer  "sick_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["product_id"], :name => "fk__sicks_products_product_id"
    t.index ["sick_id"], :name => "fk__sicks_products_sick_id"
    t.foreign_key ["product_id"], "products", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_sicks_products_product_id"
    t.foreign_key ["sick_id"], "sicks", ["id"], :on_update => :no_action, :on_delete => :no_action, :name => "fk_sicks_products_sick_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.boolean  "admin"
    t.boolean  "estado",          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_complete"
    t.string   "password_digest"
    t.string   "remember_token"
    t.index ["remember_token"], :name => "index_users_on_remember_token"
    t.index ["name"], :name => "index_users_on_name", :unique => true
  end

end
