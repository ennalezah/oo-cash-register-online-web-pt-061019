require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
  end
  
  def apply_discount
    if self.discount > 0
      self.total -= (self.total * self.discount) / 100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items=(title, price, quantity)
    items = []
    add_item(title, price, quantity = 1)
    items << title * quantity
    @items = items
  end

  def items
    @items
  end
  
end

# sale1 = CashRegister.new
# sale1.add_item("eggs", 2.50, 1)
# sale1.add_item("tomatoes", 0.50, 3)
# puts sale1.items