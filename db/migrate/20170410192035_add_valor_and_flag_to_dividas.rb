class AddValorAndFlagToDividas < ActiveRecord::Migration[5.0]
  def change
    add_column :dividas, :valor, :decimal
    add_column :dividas, :flag, :boolean
  end
end
