class AddDetailsToSeals < ActiveRecord::Migration[7.1]
  def change
    add_column :seals, :email, :string
    add_column :seals, :phone_number, :integer
    add_index :seals, :email, unique: true
    add_index :seals, :phone_number, unique: true


  end
end
