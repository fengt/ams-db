class CreateDicts < ActiveRecord::Migration[5.1]
  def change
    reversible do |direction|
      direction.up do
        create_table :dicts, :comment => "字典表" do |t|
          t.string :name, null: false, :comment => "大类名称"

          t.timestamps
        end
      end
      direction.down do
        drop_table :dicts
      end
    end
  end
end
