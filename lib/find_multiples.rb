def is_multiple_of_3_or_5?(n)
  (n % 3 == 0 || n % 5 == 0) ? true : false
end

def sum_of_3_or_5_multiples(final_number)
  sum = 0
  values = []
  n = 1
  if (final_number.class == Integer && final_number >=0)
    loop do
      values.push(n)
      n += 1
      if n > final_number
        break
      end 
    end
    f = values.reject{|v| is_multiple_of_3_or_5?(v) == false}
    return f.inject(0, :+) 
    
  else
    return "Il faut entrer un entier naturel!"
  end
  end


