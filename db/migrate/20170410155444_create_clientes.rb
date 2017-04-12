class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :email
      t.string :telefone
      t.string :celular
      t.date :nascimento

      t.timestamps
    end
  end
end
