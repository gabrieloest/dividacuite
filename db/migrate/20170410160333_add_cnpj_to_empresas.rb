class AddCnpjToEmpresas < ActiveRecord::Migration[5.0]
  def change
    add_column :empresas, :cnpj, :string
  end
end
