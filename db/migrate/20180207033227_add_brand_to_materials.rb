class AddBrandToMaterials < ActiveRecord::Migration[5.1]
  def change
    reversible do |dr|
      dr.up do
        add_column :materials, :brand, :string
        set_column_comment :materials, :brand, '品牌'
      end
      dr.down do
        remove_column :materials, :brand
      end
    end
  end
end
