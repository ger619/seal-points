class CreateHomes < ActiveRecord::Migration[7.1]
  def change
    create_table :homes, id: :uuid do |t|

      t.timestamps
    end
  end
end
