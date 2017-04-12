class CreateDividas < ActiveRecord::Migration[5.0]
  def change
    create_table :dividas do |t|
      t.integer :empresa_id
      t.integer :cliente_id

      t.timestamps
    end
  end
end
