require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  i = 0
  while i < cart.size do
    name = cart[i][:item]
    h = find_item_by_name_in_collection(name, coupons)
    if h!= nil && h[:num] < cart[i][:count]
      remainder = cart[i][:count] % h[:num]
      divisor = cart[i][:count]/h[:num]

      new_h = cart[i]
      new_h[:count] = remainder
      # cart[i] = new_h

      add_h = {
        :item=>cart[i][:item]+" W/COUPON",
        :price=>h[:cost]/h[:num],
        :clearance=>cart[i][:clearance],
        :count=>divisor*h[:num]
      }
      cart << add_h


    end
    i += 1
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
