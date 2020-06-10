class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :height
      t.integer :weight
      t.string :gender

      t.timestamps
    end
  end
end
