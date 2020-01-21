$arr = [17, 6, 9, 3, 6, 9, 15, 8, 6, 1, 10]

def potential_benefice (buyVal, sellVal)
  return sellVal - buyVal
end

def best_benefice_when_buying (array, index)
    
    bestBuy = array.reject.with_index{|v, idx| idx <= index}.map{|v| p potential_benefice(array[index], v)}
    bestBuy.max
end

def best_turn_to_buy (array)
  h = {}
  array.map.with_index{|v, index| h[index] = best_benefice_when_buying(array, index)}
  bOp = h.compact.sort_by{|idx, v| v}.last
  bOp[0]
end

def best_turn_to_sell (array, turnToBuy)
  bestSell = array.reject.with_index{|v, idx| idx <= turnToBuy}.max
  array.index(bestSell)
end

def display_result (buyTurn, sellTurn)
  p "Il faut acheter au tour n° #{buyTurn+1} et revendre au tour n° #{sellTurn+1}."
end
def main (array)
  b_b = best_turn_to_buy(array)
  b_s = best_turn_to_sell(array, b_b)
  display_result(b_b, b_s)
end
# best_benefice_when_buying($arr, 3)
# def get_index_turn_to_buy(bestBuy, array)
#   array.index(bestValue)
# end
# def get_index_turn_to_sell(indexOfBuy, array)
#   #array.index(array.reject.with_index{|v, idx| idx < indexOfBuy}.max)
#   array.map.with_index {|val, idx| a == 'x' ? i : nil}.compact
# end


# def test (arr)
#   h = {}
#   $arr.map.with_index{|v, index| h[index] = best_benefice_when_buying(index)}
#   bOp = h.sort_by{|idx, v| v}.last
#   bestBuyTurn = bOp[0]
#   bestSell = $arr.reject.with_index{|v, idx| idx < bestBuyTurn}.max
#   bestSellTurn = $arr.index(bestSell)
#   final = "Il faut acheter au tour n° #{bestBuyTurn+1} et revendre au tour n° #{bestSellTurn+1}"
#   #cédlabidouille...
#   #return "Best buy turn is turn n°#{bestBuy} and best sell is turn n° #{bestSell}"
# end
p main($arr)
# p best_turn_to_buy($arr)
# p best_turn_to_sell($arr, 1)
#p best_benefice_when_buying(1)
#p test ($arr)
#test([17, 3, 6, 9, 15, 8, 6, 1, 10])

# def best_benefice_when_buying(index)
#   temp = 0
#   bestBuy = $arr.reject.with_index{|v, idx| idx < index}.map.with_index{|v, idx| a = potential_benefice($arr[index], v); a > temp ? temp = a; idx; : nil}
#   bestBuy
# end

# def best_benefice_when_buying(index)
#   temp = 0
#   bestBuy = $arr.reject.with_index{|v, idx| idx < index}.map{|v| a = potential_benefice($arr[index], v)}.max
#   bestBuy
# end