class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :numero_telefonico
      t.string :nombre
      t.string :email

      t.timestamps
    end
  end
end
