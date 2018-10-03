class OrderItem < ApplicationRecord
  belongs_to :drink, optional: true
  belongs_to :order, optional: true
  # validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

  before_save :finalize


  def unit_price
    if self[:unit_price]
      return self[:unit_price].to_f
    else
      drink.price
    end
  end

  def total_unit_price
    self[:quantity] * self[:unit_price]
  end

  private

  def finalize
    self[:unit_price] = self.unit_price
    self[:total_price] = quantity * self[:unit_price]
  end

end
