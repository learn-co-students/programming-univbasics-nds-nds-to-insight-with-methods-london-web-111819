require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  directors_database.each do |director|
    gross = 0
    director[:movies].each do |movie|
    gross += movie[:worldwide_gross]
    end
    result[director[:name]] = gross
  end
    result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
 gross = 0

    director_data[:movies].each do |movie|
    gross +=  movie[:worldwide_gross] end

     gross

end
