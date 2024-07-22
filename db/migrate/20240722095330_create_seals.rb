class CreateSeals < ActiveRecord::Migration[7.1]
  def change
    create_table :seals, id: :uuid do |t|
      t.string :id_number
      t.string :first_name
      t.string :middle_name
      t.string :sir_name
      t.date :date_of_birth
      t.string :gender
      t.string :country
      t.string :county

      t.timestamps
    end
  end
end
