class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :girl_name, null: false
      %i(donations savannah_smiles trefoils do_si_dos samoas tagalongs thin_mints smores toffee_tastic).each do |cookie_type|
        t.integer cookie_type, null: false, default: 0
        t.integer "#{cookie_type}_online", null: false, default: 0
      end

      t.timestamps
    end
  end
end
