class Drink < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items

  # default_scope { where(active: true) }
end
