class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    reversible do |direction|
      direction.up do
        create_table :materials, :comment => "物料基础表" do |t|
          t.integer :type_id, null: false, :comment => "设备ID(字典表ID)"
          t.integer :name_id, null: false, :comment => "设备名称ID(字典明细ID)"
          t.string :specification, null: false, :comment => "规格型号"
          t.integer :unit_id, null: false, :comment => "单位ID(字典明细ID)"
          t.string :remark, :comment => "备注"
          t.string :updated_by, null: false, :comment => "更新人"
          t.integer :enabled, null: false, default: 0, limit: 1, :comment => "是否启用 0:是 1:否"

          t.timestamps
        end
      end
      direction.down do
        drop_table :materials
      end
    end
  end
end
