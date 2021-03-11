require 'pry'
class CashRegister
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = items
    end

    def total=(total)
        @total = total
    end

    def total
        @total
    end

    def discount
        @discount
    end

    def items
        @items
    end

    def add_item(title, price, quantity = 1)
        quantity.times do
            @items << title
        end
        @last_total = @total
        @total += price * quantity
    end

    def apply_discount
        @total -= @total * @discount / 100
        
        if discount == 0
        "There is no discount to apply."
        else
        "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        @items.to_a
    end

    def void_last_transaction
        @total = @last_total

    end
end
