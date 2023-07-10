class CreateLlamados < ActiveRecord::Migration[7.0]
  def change
    create_table :llamados do |t|
      t.references :cliente, null: false, foreign_key: true
      t.string :motivo
      t.date :fecha

      t.timestamps
    end
  end
end
