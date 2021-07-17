class Order < ApplicationRecord
  has_many :items

  # Total value order
  def total
    items.includes(:product).sum('price * quantity')
  end
end
