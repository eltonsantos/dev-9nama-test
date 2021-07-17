class Item < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :supplier
  belongs_to :customer
end
