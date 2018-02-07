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

ActiveRecord::Schema.define(version: 20180207083754) do

  create_table "dict_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "字典明细" do |t|
    t.string "name", null: false, comment: "小类名称"
    t.integer "dict_id", null: false, comment: "大类ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dicts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "字典表" do |t|
    t.string "name", null: false, comment: "大类名称"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "物料基础表" do |t|
    t.integer "type_id", null: false, comment: "设备ID(字典表ID)"
    t.integer "name_id", null: false, comment: "设备名称ID(字典明细ID)"
    t.string "specification", null: false, comment: "规格型号"
    t.integer "unit_id", null: false, comment: "单位ID(字典明细ID)"
    t.string "remark", comment: "备注"
    t.string "updated_by", null: false, comment: "更新人"
    t.integer "enabled", limit: 1, default: 0, null: false, comment: "是否启用 0:是 1:否"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "brand", comment: "品牌"
  end

  create_table "organizations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "组织表" do |t|
    t.string "name", null: false, comment: "组织名称"
    t.integer "parent_id", null: false, comment: "所属上级ID"
    t.integer "level", null: false, comment: "所处层级"
    t.string "description", comment: "说明"
    t.integer "enabled", limit: 1, default: 0, null: false, comment: "是否有效 0:是 1:否"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
