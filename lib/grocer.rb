def find_item_by_name_in_collection(name, collection)
  index = 0
  while index < collection.length do
    return collection[index] if collection[index][:item] == name 
  index += 1
end
end
  
def consolidate_cart(cart)
  index = 0 
  updated_cart = []
  
  while index < cart.length do 
    item = find_item_by_name_in_collection(cart[index][:item], updated_cart)
    if item
      updated_cart_index = 0
      while updated_cart_index < updated_cart.length do
        if updated_cart[updated_cart_index][:item] == item[:item]
          updated_cart[updated_cart_index][:count] += 1
        end
        updated_cart_index += 1
      end
    else
      cart[index][:count] = 1
      updated_cart << cart[index]
    end
    index += 1
  end
  updated_cart
end
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.



  