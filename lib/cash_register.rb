require 'pry'

# CashRegister, ::new sets an instance variable @total on initialization to zero optionally takes an employee discount on initialization
# total, returns the current total
# add_item, accepts a title and a price and increases the total, also accepts an optional quantity, doesn't forget about the previous total
# apply_discount, the cash register was initialized with an employee discount, applies the discount to the total price, returns success message with updated total, reduces the total, the cash register was not initialized with an employee discount, returns a string error message that there is no discount to apply
# items, returns an array containing all items that have been added
# void_last_transaction, subtracts the last item from the total, returns the total to 0.0 if all items have been removed

require 'pry'

class CashRegister
  attr_accessor :total, :discount, :quantity, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @price = price
    @quantity = quantity
    @items = []
    @transactions = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @transactions << price
    i = quantity
    until i == 0 do
      @items << title
      i -= 1
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (0.01 * @discount * @total).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = @total - @transactions.pop
  end
end