require 'directors_database'
require 'pp'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  outer_index = 0
  while outer_index < nds.length do
    director = nds[outer_index]
    result[director[:name]] = gross_for_director(director)
    outer_index += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    total = 0 
    inner_index = 0
    while inner_index < director_data[:movies].length do 
      total += director_data[:movies][inner_index][:worldwide_gross]
      inner_index += 1
    end
    total
end
