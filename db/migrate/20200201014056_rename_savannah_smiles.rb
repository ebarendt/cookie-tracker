class RenameSavannahSmiles < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :savannah_smiles, :lemon_ups
    rename_column :orders, :savannah_smiles_online, :lemon_ups_online
  end
end
