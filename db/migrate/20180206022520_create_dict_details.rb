class CreateDictDetails < ActiveRecord::Migration[5.1]
  def change
    reversible do |direction|
      direction.up do
        create_table :dict_details, :comment => "字典明细" do |t|
          t.string :name, null: false, :comment => "小类名称"
          t.integer :dict_id, null: false, :comment => "大类ID"

          t.timestamps
        end
      end
      direction.down do
        drop_table :dict_details
      end
    end
  end
end
