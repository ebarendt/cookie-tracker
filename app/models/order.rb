class Order < ApplicationRecord
  COOKIE_TYPES = %i(donations savannah_smiles trefoils do_si_dos samoas tagalongs thin_mints smores toffee_tastic)
  validates :girl_name, presence: true

  def total(order_type = nil)
    if order_type == :in_person
      COOKIE_TYPES.sum { |type| public_send(type) }
    elsif order_type == :online
      COOKIE_TYPES.sum { |type| public_send("#{type}_online") }
    else
      COOKIE_TYPES.sum { |type| total_for(type) }
    end
  end

  def total_for(type)
    send(type) + send("#{type}_online")
  end
end
