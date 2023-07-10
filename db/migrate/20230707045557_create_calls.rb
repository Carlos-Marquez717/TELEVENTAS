class CreateCalls < ActiveRecord::Migration[7.0]
  def change
    create_table :calls do |t|
      t.string :motivo
      t.date :fecha

      t.timestamps
    end
  end
end
