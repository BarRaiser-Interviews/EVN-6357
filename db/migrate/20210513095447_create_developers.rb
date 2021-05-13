class CreateDevelopers < ActiveRecord::Migration[5.2]
  def change
    create_table :developers do |t|
      t.references :team, null: false, foreign_key: true
      t.string :name, null: false
      t.string :phone_number, null: false
      t.timestamps
    end
  end
end
