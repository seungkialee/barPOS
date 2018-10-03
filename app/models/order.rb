class Order < ApplicationRecord
  belongs_to :order_status, optional: true
  has_many :order_items
  has_many :drinks, through: :order_items
  before_create :set_order_status
  before_save :update_subtotal


  def subtotal
  pre_sub = 0
  self.order_items.map do |order_item|

    if order_item.valid?
      pre_sub += (order_item.quantity * order_item.unit_price).to_f
    else
      return pre_sub
    end
  end
  pre_sub
end



private

def set_order_status
  self.order_status_id = 1
end

def update_subtotal
  # calling self.subtotal will call the method instead. thats why we use self[:subtotal]
  self[:subtotal] = subtotal
end

end
