class CreateWarehouses < ActiveRecord::Migration[5.1]
  def change
    reversible do |direction|
      direction.up do
        create_table :warehouses, :comment => "仓库表" do |t|
          t.string :name, null: false, :comment => "仓库名称"
          t.integer :org_id, null: false, :comment => "所属组织ID"
          t.string :remark, :comment => "备注"
          t.string :updated_by, null: false, :comment => "更新人"
          t.integer :enabled, null: false, default: 0, limit: 1, :comment => "是否有效 0:是 1:否"

          t.timestamps
        end
      end
      direction.down do
        drop_table :warehouses
      end
    end
  end
end
