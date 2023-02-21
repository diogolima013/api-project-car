class AddMarcaToModelos < ActiveRecord::Migration[7.0]
  def change
    add_reference :modelos, :marca, null: false, foreign_key: true
  end
end
