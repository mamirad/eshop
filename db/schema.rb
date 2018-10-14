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

ActiveRecord::Schema.define(version: 2018_10_11_153424) do

  create_table "beholders", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "sale_id"
    t.string "name1"
    t.string "profession1"
    t.string "designation1"
    t.string "city1"
    t.string "address1"
    t.string "mobile1"
    t.string "officaddress1"
    t.string "officmobile1"
    t.string "cnic21"
    t.string "beholderimg1"
    t.string "name2"
    t.string "profession2"
    t.string "designation2"
    t.string "city2"
    t.string "address2"
    t.string "mobile2"
    t.string "officaddress2"
    t.string "officmobile2"
    t.string "cnic2"
    t.string "beholderimg2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sale_id"], name: "index_beholders_on_sale_id"
  end

  create_table "customers", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "address"
    t.string "mobile"
    t.string "officaddress"
    t.string "officmobile"
    t.string "cost"
    t.string "housestatus"
    t.string "cnic"
    t.string "profession"
    t.string "designation"
    t.integer "salary"
    t.string "cnicimg1"
    t.string "cnicimg2"
    t.string "cusimg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instalments", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "sale_id"
    t.integer "paid_amount"
    t.integer "net_balance"
    t.index ["sale_id"], name: "index_instalments_on_sale_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.string "size"
    t.string "color"
    t.integer "pprice"
    t.integer "sprice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "serial"
    t.string "name"
    t.string "status"
    t.integer "quantity"
    t.string "productimg"
  end

  create_table "sales", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "product_id"
    t.string "cnic"
    t.integer "discount"
    t.integer "paidmoney"
    t.integer "netinstalment"
    t.integer "netbalance"
    t.integer "netproductprice"
    t.integer "instalmentprice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_sales_on_product_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "mobile"
    t.string "city"
    t.string "address"
    t.string "profileimg"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "beholders", "sales"
  add_foreign_key "instalments", "sales"
  add_foreign_key "sales", "products"
end
