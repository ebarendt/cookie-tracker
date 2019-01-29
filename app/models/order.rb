class Order < ApplicationRecord
  COOKIE_TYPES = %i(donations savannah_smiles trefoils do_si_dos samoas tagalongs thin_mints smores toffee_tastic)
  validates :girl_name, presence: true

  def total
    COOKIE_TYPES.sum { |type| public_send(type) }
  end

  def total_for(type)
    send(type) + send("#{type}_online")
  end
end
