class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.float :age
      t.float :weignt
      t.timestamp :date_selected
      t.string :phone
      t.text :priscription
      t.string :phone

      t.timestamps null: false
    end
  end
end
