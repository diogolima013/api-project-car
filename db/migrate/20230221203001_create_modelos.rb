class CreateModelos < ActiveRecord::Migration[7.0]
  def change
    create_table :modelos do |t|
      t.string :name
      t.string :description
      t.string :year

      t.timestamps
    end
  end
end
