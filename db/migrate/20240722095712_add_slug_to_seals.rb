class AddSlugToSeals < ActiveRecord::Migration[7.1]
  def change
    add_column :seals, :slug, :string
    add_index :seals, :slug, unique: true
  end
end
