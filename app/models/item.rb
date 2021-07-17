class Item < ApplicationRecord
  validates_presence_of :quantity

  belongs_to :order
  belongs_to :product
  belongs_to :supplier
  belongs_to :customer
end
