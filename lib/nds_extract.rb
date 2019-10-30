require 'directors_database'
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do 
    director = nds[director_index][:name]
    result[director] = gross_for_director(nds[director_index])
    director_index += 1
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


  def gross_for_director(director_data)
  counter = 0
  sum = 0
  while counter < director_data[:movies].length do 
   sum += director_data[:movies][counter][:worldwide_gross]
   counter += 1
  end
  
  return sum
  
end
