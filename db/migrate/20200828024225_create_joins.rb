class CreateJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :joins do |t|
      t.references :pokemon, null: false, foreign_key: true
      t.references :trainer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
