class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    reversible do |direction|
      direction.up do
        create_table :organizations, :comment => "组织表" do |t|
          t.string :name, null: false, :comment => "组织名称"
          t.integer :parent_id, null: false, :comment => "所属上级ID"
          t.integer :level, null: false, :comment => "所处层级"
          t.string :description, :comment => "说明"
          t.integer :enabled, null: false, default: 0, limit: 1, :comment => "是否有效 0:是 1:否"

          t.timestamps
        end
      end
      direction.down do
        drop_table :organizations
      end
    end
  end
end
